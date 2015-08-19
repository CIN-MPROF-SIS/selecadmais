package selecadmais


import grails.plugin.springsecurity.SpringSecurityService
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestionarioController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE", salvarRespostas: "POST"]

    def index(Integer max) {
        def candidadoRole = Papel.findByAuthority('PAPEL_CANDIDATO')
        def vaga = Vaga.findById(params.id)
        def selecionado = false

        if (springSecurityService.currentUser.authorities.contains(candidadoRole))
            selecionado = CandidatoVaga.findByCandidato(springSecurityService.currentUser.pessoa).selecionado

        params.max = Math.min(max ?: 10, 100)

        def questionarios = Questionario.findAllByVaga(vaga)
        def respondido = [:]

        questionarios.each(
        {
            def quest = it
            def respostas = Resposta.withCriteria {
                and{
                    opcao {
                        
                        questao {
                            questionario{
                                eq("id", quest.id)
                            }
                            
                        }
                    }
                    candidato{
                        eq("id", springSecurityService.currentUser.pessoa.id)
                    }
                }
            }
            respondido[it.id] = respostas.size() > 0    
        })

        [respondido:respondido, selecionado: selecionado, questionarioInstanceList: questionarios, id: params.id, questionarioInstanceCount: Questionario.count()]
        //respond Questionario.findAllByVaga(vaga), model:[vaga: params.id, questionarioInstanceCount: Questionario.count()]
    }

    def show(Questionario questionarioInstance) {
        respond questionarioInstance
    }

    def create() {
        [questionarioInstance: new Questionario(params), vaga: params.id]
        //respond new Questionario(params)
    }

    def responder(){
        def questionarioInstance = Questionario.findById(params.id)
        [questionarioInstance: questionarioInstance]
    }

    @Transactional
    def salvarRespostas(){
        def questionarioInstance = Questionario.findById(params.id)

        /*def respostas = Resposta.where {
            opcao.questao.questionario.id == questionarioInstance.id &&
            opcao.candidato.id == springSecurityService.currentUser.pessoa.id
        }//.deleteAll()*/

        def respostas = Resposta.withCriteria {
            and{
                opcao {
                    
                    questao {
                        questionario{
                            eq("id", questionarioInstance.id)
                        }
                        
                    }
                }
                candidato{
                    eq("id", springSecurityService.currentUser.pessoa.id)
                }
            }
        }

        Resposta.deleteAll(respostas);
        
        def cont = 0
        questionarioInstance.questoes.each {
            if (params["resposta[" + it.id + "]"] != null){
                def o = Opcao.findById(params["resposta[" + it.id + "]"])
                def r = new Resposta()

                r.opcao = o
                r.candidato = springSecurityService.currentUser.pessoa
                r.save flush:true
            }

            cont++
        }

        redirect  (controller: "questionario" , action:"index", params: [id: params.idVaga])
    }

    @Transactional
    def save(Questionario questionarioInstance) {
        def savedErrors = questionarioInstance.errors.allErrors.findAll{ true }
        def cdError = savedErrors.findAll{ it.field == "vaga"}
        savedErrors.removeAll(cdError)
        questionarioInstance.clearErrors()
        savedErrors.each {
            questionarioInstance.errors.addError(it)
        } 

        Vaga vaga = Vaga.findById(params.vaga)
        questionarioInstance.vaga = vaga
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
