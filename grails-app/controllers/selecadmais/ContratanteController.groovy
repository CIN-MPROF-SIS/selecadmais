package selecadmais


import grails.plugin.springsecurity.SpringSecurityService
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContratanteController {

    FileUploadService fileUploadService
    SpringSecurityService springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        
        if(springSecurityService.currentUser.pessoa == null){
            create()
        }
        else{
            edit()
        }

        //params.max = Math.min(max ?: 10, 100)
        //respond Contratante.list(params), model:[contratanteInstanceCount: Contratante.count()]
    }

    def show(Contratante contratanteInstance) {
        respond contratanteInstance
    }

    def create() {
        render(view: "create", model: [contratanteInstance: new Contratante(params)])
        //respond new Contratante(params)
    }

    @Transactional
    def save(Contratante contratanteInstance) {
        if (contratanteInstance == null) {
            notFound()
            return
        }

        if (contratanteInstance.hasErrors()) {
            respond contratanteInstance.errors, view:'create'
            return
        }

        if(contratanteInstance.dataNascimento == null)
            contratanteInstance.dataNascimento = new Date()

        def extensoes_logo = ['jpg', 'jpeg', 'gif', 'png']
        def logo = request.getFile('fileLogo')
    
        if (!logo.isEmpty()) {
            if(!extensoes_logo.contains(logo.getOriginalFilename().split("\\.")[1].toLowerCase()))
            {
                request.withFormat {
                    form multipartForm {
                            candidatoInstance.errors.rejectValue(
                            'logo',
                            'Formato da logo não é de imagem')
                        render(view: "create", model: [contratanteInstance: contratanteInstance])
                    }
                    '*'{ respond contratanteInstance, [status: error] }
                }
                return;
            }
            contratanteInstance.logo = fileUploadService.uploadFile(logo, logo.getOriginalFilename(), "logos/" + contratanteInstance.id)
        }

        contratanteInstance.save flush:true

        springSecurityService.currentUser.pessoa = contratanteInstance
        springSecurityService.currentUser.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contratante.label', default: 'Contratante'), contratanteInstance.id])
                redirect contratanteInstance
            }
            '*' { respond contratanteInstance, [status: CREATED] }
        }
    }

    def edit(Contratante contratanteInstance) {
        render(view: "edit", model: [contratanteInstance: springSecurityService.currentUser.pessoa])
        //respond contratanteInstance
    }

    @Transactional
    def update(Contratante contratanteInstance) {
        if (contratanteInstance == null) {
            notFound()
            return
        }

        if (contratanteInstance.hasErrors()) {
            respond contratanteInstance.errors, view:'edit'
            return
        }

        if(contratanteInstance.dataNascimento == null)
            contratanteInstance.dataNascimento = new Date()

        def extensoes_logo = ['jpg', 'jpeg', 'gif', 'png']
        def logo = request.getFile('fileLogo')
    
        if (!logo.isEmpty()) {
            if(!extensoes_logo.contains(logo.getOriginalFilename().split("\\.")[1].toLowerCase()))
            {
                request.withFormat {
                    form multipartForm {
                            candidatoInstance.errors.rejectValue(
                            'logo',
                            'Formato da logo não é de imagem')
                        render(view: "edit", model: [contratanteInstance: contratanteInstance])
                    }
                    '*'{ respond contratanteInstance, [status: error] }
                }
                return;
            }
            contratanteInstance.logo = fileUploadService.uploadFile(logo, logo.getOriginalFilename(), "logos/" + contratanteInstance.id)
        }

        contratanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Contratante.label', default: 'Contratante'), contratanteInstance.id])
                redirect contratanteInstance
            }
            '*'{ respond contratanteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Contratante contratanteInstance) {

        if (contratanteInstance == null) {
            notFound()
            return
        }

        contratanteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Contratante.label', default: 'Contratante'), contratanteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contratante.label', default: 'Contratante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

}
