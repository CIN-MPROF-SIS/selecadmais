package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestionarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questionario.list(params), model:[questionarioInstanceCount: Questionario.count()]
    }

    def show(Questionario questionarioInstance) {
        respond questionarioInstance
    }

    def create() {
        respond new Questionario(params)
    }

    @Transactional
    def save(Questionario questionarioInstance) {
        if (questionarioInstance == null) {
            notFound()
            return
        }

        if (questionarioInstance.hasErrors()) {
            respond questionarioInstance.errors, view:'create'
            return
        }

        questionarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'questionario.label', default: 'Questionario'), questionarioInstance.id])
                redirect questionarioInstance
            }
            '*' { respond questionarioInstance, [status: CREATED] }
        }
    }

    def edit(Questionario questionarioInstance) {
        respond questionarioInstance
    }

    @Transactional
    def update(Questionario questionarioInstance) {
        if (questionarioInstance == null) {
            notFound()
            return
        }

        if (questionarioInstance.hasErrors()) {
            respond questionarioInstance.errors, view:'edit'
            return
        }

        questionarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Questionario.label', default: 'Questionario'), questionarioInstance.id])
                redirect questionarioInstance
            }
            '*'{ respond questionarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Questionario questionarioInstance) {

        if (questionarioInstance == null) {
            notFound()
            return
        }

        questionarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Questionario.label', default: 'Questionario'), questionarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionario.label', default: 'Questionario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
