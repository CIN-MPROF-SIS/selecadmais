package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VagaController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def springSecurityService
	

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Vaga.list(params), model:[vagaInstanceCount: Vaga.count()]
	}

	def vagasDisponiveis() {
		def dataAtual = new Date()
		def criteria = Vaga.createCriteria()

		def vagas = criteria.list {
			and {
				lt("dataInicioInscricao",dataAtual)
				gt("dataTerminoInscricao",dataAtual)
			}
			order("dataInicioInscricao")
		}

		render (view:"vagasDisponiveis", model: [vagas: vagas])
	}

	def show(Vaga vagaInstance) {
		respond vagaInstance
	}

	def create() {
		
		String username = principal.username
		def usuario = Usuario.findByUsername(username)
		
		def vaga = new Vaga(params)
		vaga.contratante= usuario.pessoa
		vaga.dataCadastro = new Date()  
		
		respond vaga 
	}

	@Transactional
	def save(Vaga vagaInstance) {
		if (vagaInstance == null) {
			notFound()
			return
		}

		if (vagaInstance.hasErrors()) {
			respond vagaInstance.errors, view:'create'
			return
		}

		vagaInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'vaga.label', default: 'Vaga'),
					vagaInstance.id
				])
				redirect vagaInstance
			}
			'*' { respond vagaInstance, [status: CREATED] }
		}
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
