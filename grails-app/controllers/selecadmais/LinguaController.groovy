package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LinguaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Lingua.list(params), model:[linguaInstanceCount: Lingua.count()]
    }

    def show(Lingua linguaInstance) {
        respond linguaInstance
    }

    def create() {
        respond new Lingua(params)
    }

    @Transactional
    def save(Lingua linguaInstance) {
        if (linguaInstance == null) {
            notFound()
            return
        }

        if (linguaInstance.hasErrors()) {
            respond linguaInstance.errors, view:'create'
            return
        }

        linguaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lingua.label', default: 'Lingua'), linguaInstance.id])
                redirect linguaInstance
            }
            '*' { respond linguaInstance, [status: CREATED] }
        }
    }

    def edit(Lingua linguaInstance) {
        respond linguaInstance
    }

    @Transactional
    def update(Lingua linguaInstance) {
        if (linguaInstance == null) {
            notFound()
            return
        }

        if (linguaInstance.hasErrors()) {
            respond linguaInstance.errors, view:'edit'
            return
        }

        linguaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Lingua.label', default: 'Lingua'), linguaInstance.id])
                redirect linguaInstance
            }
            '*'{ respond linguaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Lingua linguaInstance) {

        if (linguaInstance == null) {
            notFound()
            return
        }

        linguaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Lingua.label', default: 'Lingua'), linguaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lingua.label', default: 'Lingua'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
