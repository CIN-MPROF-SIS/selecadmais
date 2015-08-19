package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def papel

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Usuario.list(params), model:[usuarioInstanceCount: Usuario.count()]
    }
	
	def moderar(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		
		def c = Usuario.createCriteria()
		def results = c.list {
			isNotNull("pessoa")
			and {
				eq("desativada", true)
			}
			
		}
		render(view: "moderar", model: [usuarioInstanceList: results])
	}

    def show(Usuario usuarioInstance) {
       
        respond usuarioInstance
    }

    def create() {
		def usuario = new Usuario(params)
		usuario.desativada = false
		usuario.enabled = true
		respond usuario
    }

    @Transactional
    def save(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'create'
            return
        }

        usuarioInstance.save flush:true

		def papelUsuario = Papel.findByAuthority(usuarioInstance.papel)
        if (!usuarioInstance.authorities.contains(papelUsuario)) {
             UsuarioPapel.create usuarioInstance, papelUsuario
        }

        redirect controller:"app", action:"home"
    }
	
	@Transactional
	def aprovar(Usuario usuarioInstance) {
		if (usuarioInstance == null) {
			notFound()
			return
		}
		
		usuarioInstance.desativada=false
		usuarioInstance.save flush:true
		
		def c = Usuario.createCriteria()
		def results = c.list {
			isNotNull("pessoa")
			and {
				eq("desativada", true)
			}
			
		}

		render(view: "moderar", model: [usuarioInstanceList: results])
	}

    def edit(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    @Transactional
    def update(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'edit'
            return
        }

        usuarioInstance.save flush:true
        
		def papelUsuario = Papel.findByAuthority(usuarioInstance.papel)
        if (!usuarioInstance.authorities.contains(papelUsuario)) {
             UsuarioPapel.create usuarioInstance, papelUsuario
        }  

        redirect controller:"app", action:"home"
    }

    @Transactional
    def delete(Usuario usuarioInstance) {

        if (usuarioInstance == null) {
            notFound()
            return
        }
		
		
		UsuarioPapel.removeAll(usuarioInstance,true)

        usuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
