package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ExperienciaProfissionalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ExperienciaProfissional.list(params), model:[experienciaProfissionalInstanceCount: ExperienciaProfissional.count()]
    }

    def show(ExperienciaProfissional experienciaProfissionalInstance) {
        respond experienciaProfissionalInstance
    }

    def create() {
        respond new ExperienciaProfissional(params)
    }

    @Transactional
    def save(ExperienciaProfissional experienciaProfissionalInstance) {
        if (experienciaProfissionalInstance == null) {
            notFound()
            return
        }

        if (experienciaProfissionalInstance.hasErrors()) {
            respond experienciaProfissionalInstance.errors, view:'create'
            return
        }

        experienciaProfissionalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'experienciaProfissional.label', default: 'ExperienciaProfissional'), experienciaProfissionalInstance.id])
                redirect experienciaProfissionalInstance
            }
            '*' { respond experienciaProfissionalInstance, [status: CREATED] }
        }
    }

    def edit(ExperienciaProfissional experienciaProfissionalInstance) {
        respond experienciaProfissionalInstance
    }

    @Transactional
    def update(ExperienciaProfissional experienciaProfissionalInstance) {
        if (experienciaProfissionalInstance == null) {
            notFound()
            return
        }

        if (experienciaProfissionalInstance.hasErrors()) {
            respond experienciaProfissionalInstance.errors, view:'edit'
            return
        }

        experienciaProfissionalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExperienciaProfissional.label', default: 'ExperienciaProfissional'), experienciaProfissionalInstance.id])
                redirect experienciaProfissionalInstance
            }
            '*'{ respond experienciaProfissionalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExperienciaProfissional experienciaProfissionalInstance) {

        if (experienciaProfissionalInstance == null) {
            notFound()
            return
        }

        experienciaProfissionalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExperienciaProfissional.label', default: 'ExperienciaProfissional'), experienciaProfissionalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'experienciaProfissional.label', default: 'ExperienciaProfissional'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
