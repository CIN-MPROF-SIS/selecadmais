package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FaixaSalarialController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FaixaSalarial.list(params), model:[faixaSalarialInstanceCount: FaixaSalarial.count()]
    }

    def show(FaixaSalarial faixaSalarialInstance) {
        respond faixaSalarialInstance
    }

    def create() {
        respond new FaixaSalarial(params)
    }

    @Transactional
    def save(FaixaSalarial faixaSalarialInstance) {
        if (faixaSalarialInstance == null) {
            notFound()
            return
        }

        if (faixaSalarialInstance.hasErrors()) {
            respond faixaSalarialInstance.errors, view:'create'
            return
        }

        faixaSalarialInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'faixaSalarial.label', default: 'FaixaSalarial'), faixaSalarialInstance.id])
                redirect faixaSalarialInstance
            }
            '*' { respond faixaSalarialInstance, [status: CREATED] }
        }
    }

    def edit(FaixaSalarial faixaSalarialInstance) {
        respond faixaSalarialInstance
    }

    @Transactional
    def update(FaixaSalarial faixaSalarialInstance) {
        if (faixaSalarialInstance == null) {
            notFound()
            return
        }

        if (faixaSalarialInstance.hasErrors()) {
            respond faixaSalarialInstance.errors, view:'edit'
            return
        }

        faixaSalarialInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FaixaSalarial.label', default: 'FaixaSalarial'), faixaSalarialInstance.id])
                redirect faixaSalarialInstance
            }
            '*'{ respond faixaSalarialInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FaixaSalarial faixaSalarialInstance) {

        if (faixaSalarialInstance == null) {
            notFound()
            return
        }

        faixaSalarialInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FaixaSalarial.label', default: 'FaixaSalarial'), faixaSalarialInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'faixaSalarial.label', default: 'FaixaSalarial'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
