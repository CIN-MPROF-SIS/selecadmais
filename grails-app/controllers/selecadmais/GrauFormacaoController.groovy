package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GrauFormacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GrauFormacao.list(params), model:[grauFormacaoInstanceCount: GrauFormacao.count()]
    }

    def show(GrauFormacao grauFormacaoInstance) {
        respond grauFormacaoInstance
    }

    def create() {
        respond new GrauFormacao(params)
    }

    @Transactional
    def save(GrauFormacao grauFormacaoInstance) {
        if (grauFormacaoInstance == null) {
            notFound()
            return
        }

        if (grauFormacaoInstance.hasErrors()) {
            respond grauFormacaoInstance.errors, view:'create'
            return
        }

        grauFormacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'grauFormacao.label', default: 'GrauFormacao'), grauFormacaoInstance.id])
                redirect grauFormacaoInstance
            }
            '*' { respond grauFormacaoInstance, [status: CREATED] }
        }
    }

    def edit(GrauFormacao grauFormacaoInstance) {
        respond grauFormacaoInstance
    }

    @Transactional
    def update(GrauFormacao grauFormacaoInstance) {
        if (grauFormacaoInstance == null) {
            notFound()
            return
        }

        if (grauFormacaoInstance.hasErrors()) {
            respond grauFormacaoInstance.errors, view:'edit'
            return
        }

        grauFormacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GrauFormacao.label', default: 'GrauFormacao'), grauFormacaoInstance.id])
                redirect grauFormacaoInstance
            }
            '*'{ respond grauFormacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GrauFormacao grauFormacaoInstance) {

        if (grauFormacaoInstance == null) {
            notFound()
            return
        }

        grauFormacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GrauFormacao.label', default: 'GrauFormacao'), grauFormacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'grauFormacao.label', default: 'GrauFormacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
