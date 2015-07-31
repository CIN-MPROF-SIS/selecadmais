package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContratanteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Contratante.list(params), model:[contratanteInstanceCount: Contratante.count()]
    }

    def show(Contratante contratanteInstance) {
        respond contratanteInstance
    }

    def create() {
        respond new Contratante(params)
    }

    @Transactional
    def save(Contratante contratanteInstance) {
        if (contratanteInstance == null) {
            notFound()
            return
        }

        if (contratanteInstance.hasErrors()) {
            respond contratanteInstance.errors, view:'create'
            return
        }

        contratanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contratante.label', default: 'Contratante'), contratanteInstance.id])
                redirect contratanteInstance
            }
            '*' { respond contratanteInstance, [status: CREATED] }
        }
    }

    def edit(Contratante contratanteInstance) {
        respond contratanteInstance
    }

    @Transactional
    def update(Contratante contratanteInstance) {
        if (contratanteInstance == null) {
            notFound()
            return
        }

        if (contratanteInstance.hasErrors()) {
            respond contratanteInstance.errors, view:'edit'
            return
        }

        contratanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Contratante.label', default: 'Contratante'), contratanteInstance.id])
                redirect contratanteInstance
            }
            '*'{ respond contratanteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Contratante contratanteInstance) {

        if (contratanteInstance == null) {
            notFound()
            return
        }

        contratanteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Contratante.label', default: 'Contratante'), contratanteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contratante.label', default: 'Contratante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
