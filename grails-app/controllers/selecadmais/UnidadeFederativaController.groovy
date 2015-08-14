package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnidadeFederativaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnidadeFederativa.list(params), model:[unidadeFederativaInstanceCount: UnidadeFederativa.count()]
    }

    def show(UnidadeFederativa unidadeFederativaInstance) {
        respond unidadeFederativaInstance
    }

    def create() {
        respond new UnidadeFederativa(params)
    }

    @Transactional
    def save(UnidadeFederativa unidadeFederativaInstance) {
        if (unidadeFederativaInstance == null) {
            notFound()
            return
        }

        if (unidadeFederativaInstance.hasErrors()) {
            respond unidadeFederativaInstance.errors, view:'create'
            return
        }

        unidadeFederativaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unidadeFederativa.label', default: 'UnidadeFederativa'), unidadeFederativaInstance.id])
                redirect unidadeFederativaInstance
            }
            '*' { respond unidadeFederativaInstance, [status: CREATED] }
        }
    }

    def edit(UnidadeFederativa unidadeFederativaInstance) {
        respond unidadeFederativaInstance
    }

    @Transactional
    def update(UnidadeFederativa unidadeFederativaInstance) {
        if (unidadeFederativaInstance == null) {
            notFound()
            return
        }

        if (unidadeFederativaInstance.hasErrors()) {
            respond unidadeFederativaInstance.errors, view:'edit'
            return
        }

        unidadeFederativaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnidadeFederativa.label', default: 'UnidadeFederativa'), unidadeFederativaInstance.id])
                redirect unidadeFederativaInstance
            }
            '*'{ respond unidadeFederativaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnidadeFederativa unidadeFederativaInstance) {

        if (unidadeFederativaInstance == null) {
            notFound()
            return
        }

        unidadeFederativaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnidadeFederativa.label', default: 'UnidadeFederativa'), unidadeFederativaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unidadeFederativa.label', default: 'UnidadeFederativa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
