package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpcaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Opcao.list(params), model:[opcaoInstanceCount: Opcao.count()]
    }

    def show(Opcao opcaoInstance) {
        respond opcaoInstance
    }

    def create() {
        respond new Opcao(params)
    }

    @Transactional
    def save(Opcao opcaoInstance) {
        if (opcaoInstance == null) {
            notFound()
            return
        }

        if (opcaoInstance.hasErrors()) {
            respond opcaoInstance.errors, view:'create'
            return
        }

        opcaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'opcao.label', default: 'Opcao'), opcaoInstance.id])
                redirect opcaoInstance
            }
            '*' { respond opcaoInstance, [status: CREATED] }
        }
    }

    def edit(Opcao opcaoInstance) {
        respond opcaoInstance
    }

    @Transactional
    def update(Opcao opcaoInstance) {
        if (opcaoInstance == null) {
            notFound()
            return
        }

        if (opcaoInstance.hasErrors()) {
            respond opcaoInstance.errors, view:'edit'
            return
        }

        opcaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Opcao.label', default: 'Opcao'), opcaoInstance.id])
                redirect opcaoInstance
            }
            '*'{ respond opcaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Opcao opcaoInstance) {

        if (opcaoInstance == null) {
            notFound()
            return
        }

        opcaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Opcao.label', default: 'Opcao'), opcaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'opcao.label', default: 'Opcao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
