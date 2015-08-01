package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questao.list(params), model:[questaoInstanceCount: Questao.count()]
    }

    def show(Questao questaoInstance) {
        respond questaoInstance
    }

    def create() {
        respond new Questao(params)
    }

    @Transactional
    def save(Questao questaoInstance) {
        if (questaoInstance == null) {
            notFound()
            return
        }

        if (questaoInstance.hasErrors()) {
            respond questaoInstance.errors, view:'create'
            return
        }

        questaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'questao.label', default: 'Questao'), questaoInstance.id])
                redirect questaoInstance
            }
            '*' { respond questaoInstance, [status: CREATED] }
        }
    }

    def edit(Questao questaoInstance) {
        respond questaoInstance
    }

    @Transactional
    def update(Questao questaoInstance) {
        if (questaoInstance == null) {
            notFound()
            return
        }

        if (questaoInstance.hasErrors()) {
            respond questaoInstance.errors, view:'edit'
            return
        }

        questaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Questao.label', default: 'Questao'), questaoInstance.id])
                redirect questaoInstance
            }
            '*'{ respond questaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Questao questaoInstance) {

        if (questaoInstance == null) {
            notFound()
            return
        }

        questaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Questao.label', default: 'Questao'), questaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'questao.label', default: 'Questao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
