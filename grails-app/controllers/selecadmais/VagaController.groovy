package selecadmais


import grails.plugin.springsecurity.SpringSecurityService
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VagaController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def springSecurityService


	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		if(springSecurityService.currentUser.desativada){
			redirect controller:"contratante", action:"index"
		}else{
			def vagas = Vaga.findAllByContratante(springSecurityService.currentUser.pessoa, params)
			respond vagas, model:[vagaInstanceCount: Vaga.count()]
		}
	}

	def vagasDisponiveis() {
		def dataAtual = new Date()
		def criteria = Vaga.createCriteria()

		def vagas = criteria.list {
			and {
				le("dataInicioInscricao",dataAtual)
				ge("dataTerminoInscricao",dataAtual)
			}
			order("dataInicioInscricao")
		}

		render (view:"vagasDisponiveis", model: [vagas: vagas])
	}

	def show(Vaga vagaInstance) {
		respond vagaInstance
	}
	
	def create() {

		/*def principal = springSecurityService.principal
		 String username = principal.username
		 def usuario = Usuario.findByUsername(username)
		 def vaga = new Vaga(params)
		 vaga.contratante= usuario.pessoa
		 vaga.dataCadastro = new Date()  
		 respond vaga */
		respond new Usuario(params)
	}

	@Transactional
	def save(Vaga vagaInstance) {
		def savedErrors = vagaInstance.errors.allErrors.findAll{ true }
		def cdError = savedErrors.findAll{ it.field == "dataCadastro" || it.field == "contratante"}
		savedErrors.removeAll(cdError)
		vagaInstance.clearErrors()
		savedErrors.each {
			vagaInstance.errors.addError(it)
		}

		vagaInstance.dataCadastro = new Date()
		vagaInstance.contratante = springSecurityService.currentUser.pessoa
		if (vagaInstance == null) {
			notFound()
			return
		}

		if (vagaInstance.hasErrors()) {
			respond vagaInstance.errors, view:'create'
			return
		}

		vagaInstance.save flush:true	

		redirect controller:"app", action:"home"
	}

	def edit(Vaga vagaInstance) {
		respond vagaInstance
	}

	@Transactional
	def update(Vaga vagaInstance) {
		if (vagaInstance == null) {
			notFound()
			return
		}

		if (vagaInstance.hasErrors()) {
			respond vagaInstance.errors, view:'edit'
			return
		}

		vagaInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Vaga.label', default: 'Vaga'),
					vagaInstance.id
				])
				redirect vagaInstance
			}
			'*'{ respond vagaInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Vaga vagaInstance) {

		if (vagaInstance == null) {
			notFound()
			return
		}

		vagaInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Vaga.label', default: 'Vaga'),
					vagaInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'vaga.label', default: 'Vaga'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
