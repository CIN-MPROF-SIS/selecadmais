package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidatoLinguaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CandidatoLingua.list(params), model:[candidatoLinguaInstanceCount: CandidatoLingua.count()]
    }

    def show(CandidatoLingua candidatoLinguaInstance) {
        respond candidatoLinguaInstance
    }

    def create() {
        respond new CandidatoLingua(params)
    }

    @Transactional
    def save(CandidatoLingua candidatoLinguaInstance) {
        if (candidatoLinguaInstance == null) {
            notFound()
            return
        }

        if (candidatoLinguaInstance.hasErrors()) {
            respond candidatoLinguaInstance.errors, view:'create'
            return
        }

        candidatoLinguaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidatoLingua.label', default: 'CandidatoLingua'), candidatoLinguaInstance.id])
                redirect candidatoLinguaInstance
            }
            '*' { respond candidatoLinguaInstance, [status: CREATED] }
        }
    }

    def edit(CandidatoLingua candidatoLinguaInstance) {
        respond candidatoLinguaInstance
    }

    @Transactional
    def update(CandidatoLingua candidatoLinguaInstance) {
        if (candidatoLinguaInstance == null) {
            notFound()
            return
        }

        if (candidatoLinguaInstance.hasErrors()) {
            respond candidatoLinguaInstance.errors, view:'edit'
            return
        }

        candidatoLinguaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CandidatoLingua.label', default: 'CandidatoLingua'), candidatoLinguaInstance.id])
                redirect candidatoLinguaInstance
            }
            '*'{ respond candidatoLinguaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CandidatoLingua candidatoLinguaInstance) {

        if (candidatoLinguaInstance == null) {
            notFound()
            return
        }

        candidatoLinguaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CandidatoLingua.label', default: 'CandidatoLingua'), candidatoLinguaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidatoLingua.label', default: 'CandidatoLingua'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
