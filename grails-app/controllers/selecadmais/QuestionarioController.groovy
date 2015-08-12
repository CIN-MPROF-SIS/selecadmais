package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestionarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", salvarRespostas: "POST"]

    def index(Integer max) {
        def vaga = Vaga.findById(params.id)

        params.max = Math.min(max ?: 10, 100)
        respond Questionario.findAllByVaga(vaga), model:[questionarioInstanceCount: Questionario.count()]
    }

    def show(Questionario questionarioInstance) {
        respond questionarioInstance
    }

    def create() {
        respond new Questionario(params)
    }

    def responder(){
        def questionarioInstance = Questionario.findById(params.id)
        respond questionarioInstance
    }

    def salvarRespostas(){
        def candidato = Candidato.findById(2)
        def questionarioInstance = Questionario.findById(params.id)

/*        def respostas = Resposta.withCriteria
        {
            and{
                opcao.questao.questionario.id == questionarioInstance.id
                opcao.candidato.id == 2
            }
        }.deleteAll()*/
        
        def cont = 0
        questionarioInstance.questoes.each {
            if (params["resposta[" + it.id + "]"] != null){
                def o = Opcao.findById(params["resposta[" + it.id + "]"])
                def r = new Resposta()

                r.opcao = o
                r.candidato = candidato//@current_user.pessoa
                r.save flush:true
            }

            cont++
        }

        params["resposta"].each{
            println "it " + it

        }

        redirect  (controller: "questionario" , action:"index", params: [id: params.idVaga])
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
