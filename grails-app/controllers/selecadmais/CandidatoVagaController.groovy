package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidatoVagaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CandidatoVaga.list(params), model:[candidatoVagaInstanceCount: CandidatoVaga.count()]
    }

    def show(CandidatoVaga candidatoVagaInstance) {
        respond candidatoVagaInstance
    }

    def create() {
        respond new CandidatoVaga(params)
    }

    @Transactional
    def save(CandidatoVaga candidatoVagaInstance) {
        if (candidatoVagaInstance == null) {
            notFound()
            return
        }

        if (candidatoVagaInstance.hasErrors()) {
            respond candidatoVagaInstance.errors, view:'create'
            return
        }

        candidatoVagaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidatoVaga.label', default: 'CandidatoVaga'), candidatoVagaInstance.id])
                redirect candidatoVagaInstance
            }
            '*' { respond candidatoVagaInstance, [status: CREATED] }
        }
    }

    def edit(CandidatoVaga candidatoVagaInstance) {
        respond candidatoVagaInstance
    }

    @Transactional
    def update(CandidatoVaga candidatoVagaInstance) {
        if (candidatoVagaInstance == null) {
            notFound()
            return
        }

        if (candidatoVagaInstance.hasErrors()) {
            respond candidatoVagaInstance.errors, view:'edit'
            return
        }

        candidatoVagaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CandidatoVaga.label', default: 'CandidatoVaga'), candidatoVagaInstance.id])
                redirect candidatoVagaInstance
            }
            '*'{ respond candidatoVagaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CandidatoVaga candidatoVagaInstance) {

        if (candidatoVagaInstance == null) {
            notFound()
            return
        }

        candidatoVagaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CandidatoVaga.label', default: 'CandidatoVaga'), candidatoVagaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidatoVaga.label', default: 'CandidatoVaga'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
