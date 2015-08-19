package selecadmais


import grails.plugin.springsecurity.SpringSecurityService
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidatoVagaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def springSecurityService

    def index(Integer max) {
		if(springSecurityService.currentUser.pessoa == null){
			redirect controller:"candidato", action:"index"
		}else{
		 params.max = Math.min(max ?: 10, 100)
        def candidaturas = CandidatoVaga.findAllByCandidato(springSecurityService.currentUser.pessoa, params)
        respond candidaturas, model:[candidatoVagaInstanceCount: CandidatoVaga.count()]
		}
      
    }

    def home(){
        def dataAtual = new Date()
        def criteria = Vaga.createCriteria()

        def vagas = criteria.list
        {
            and
            {
                lt("dataInicioInscricao",dataAtual)
                gt("dataTerminoInscricao",dataAtual)
            }
            order("dataInicioInscricao")
        }
     
		def principal = springSecurityService.principal
		String username = principal.username
		def usuario = Usuario.findByUsername(username)
	    def candidato = usuario.pessoa

        def candidaturas = [:]
        CandidatoVaga.findAllByCandidato(candidato).each{
            candidaturas[it.vaga.id] = true
        }

        render (view:"home", model: [candidaturas: candidaturas, vagas: vagas, usuario:usuario])
    }

    def candidatar(){
        def vagaInstance = Vaga.findById(params.id)
        [vagaInstance: vagaInstance]
    }

    def avaliar(){
        def vaga = Vaga.findById(params.vaga)
        def candidaturas = CandidatoVaga.findAllByVaga(vaga)

        render(view:"avaliar", model:[candidaturas: candidaturas, vaga: vaga])
    }

    @Transactional
    def selecionar(){
        def vaga = Vaga.findById(params.vaga)

        CandidatoVaga.findAllByVaga(vaga).each{
            it.selecionado = false
            it.save flush:true
        }


        params.list("candidatura").each{
            def candidatura = CandidatoVaga.findById(it)
            candidatura.selecionado = true

            candidatura.save flush:true
        }
        avaliar()
    }

    def show(CandidatoVaga candidatoVagaInstance) {
        respond candidatoVagaInstance
    }

    def create() {
        respond new CandidatoVaga(params)
    }

    @Transactional
    def save() {
        def candidatoVagaInstance = new CandidatoVaga()
        def vaga = Vaga.findById(params.vaga)
		
		def principal = springSecurityService.principal
		String username = principal.username
		def usuario = Usuario.findByUsername(username)
		def candidato = usuario.pessoa

        if (candidatoVagaInstance.hasErrors()) {
            respond candidatoVagaInstance.errors, view:'create'
            return
        }

        candidatoVagaInstance.vaga = vaga
        candidatoVagaInstance.candidato = candidato
        candidatoVagaInstance.selecionado = false

        candidatoVagaInstance.save flush:true

        home()
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
