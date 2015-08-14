package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FormacaoAcademicaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FormacaoAcademica.list(params), model:[formacaoAcademicaInstanceCount: FormacaoAcademica.count()]
    }

    def show(FormacaoAcademica formacaoAcademicaInstance) {
        respond formacaoAcademicaInstance
    }

    def create() {
        respond new FormacaoAcademica(params)
    }

    @Transactional
    def save(FormacaoAcademica formacaoAcademicaInstance) {
        if (formacaoAcademicaInstance == null) {
            notFound()
            return
        }

        if (formacaoAcademicaInstance.hasErrors()) {
            respond formacaoAcademicaInstance.errors, view:'create'
            return
        }

        formacaoAcademicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formacaoAcademica.label', default: 'FormacaoAcademica'), formacaoAcademicaInstance.id])
                redirect formacaoAcademicaInstance
            }
            '*' { respond formacaoAcademicaInstance, [status: CREATED] }
        }
    }

    def edit(FormacaoAcademica formacaoAcademicaInstance) {
        respond formacaoAcademicaInstance
    }

    @Transactional
    def update(FormacaoAcademica formacaoAcademicaInstance) {
        if (formacaoAcademicaInstance == null) {
            notFound()
            return
        }

        if (formacaoAcademicaInstance.hasErrors()) {
            respond formacaoAcademicaInstance.errors, view:'edit'
            return
        }

        formacaoAcademicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormacaoAcademica.label', default: 'FormacaoAcademica'), formacaoAcademicaInstance.id])
                redirect formacaoAcademicaInstance
            }
            '*'{ respond formacaoAcademicaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormacaoAcademica formacaoAcademicaInstance) {

        if (formacaoAcademicaInstance == null) {
            notFound()
            return
        }

        formacaoAcademicaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormacaoAcademica.label', default: 'FormacaoAcademica'), formacaoAcademicaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formacaoAcademica.label', default: 'FormacaoAcademica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
