package selecadmais


//import org.springframework.web.multipart.MultipartFile
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidatoController {

    FileUploadService fileUploadService
    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Candidato.list(params), model:[candidatoInstanceCount: Candidato.count()]
    }

    def show(Candidato candidatoInstance) {
        respond candidatoInstance
    }

    def create() {
        respond new Candidato(params)
    }

    @Transactional
    def save(Candidato candidatoInstance) {
        if (candidatoInstance == null) {
            notFound()
            return
        }

        if (candidatoInstance.hasErrors()) {
            respond candidatoInstance.errors, view:'create'
            return
        }

        def extensoes_foto = ['jpg', 'jpeg', 'gif', 'png']
        def foto = request.getFile('fileFoto')
    
        if (!foto.isEmpty()) {
            if(!extensoes_foto.contains(foto.getOriginalFilename().split("\\.")[1].toLowerCase()))
            {
                request.withFormat {
                    form multipartForm {
                            candidatoInstance.errors.rejectValue(
                            'foto',
                            'Formato da foto não é de imagem')
                        render(view: "create", model: [candidatoInstance: candidatoInstance])
                    }
                    '*'{ respond candidatoInstance, [status: error] }
                }
                return;
            }
            candidatoInstance.foto = fileUploadService.uploadFile(foto, foto.getOriginalFilename(), "fotos/" + candidatoInstance.id)
        }
        /*else
            candidatoInstance.foto = null*/

        def curriculo = request.getFile('fileCurriculo')
        if (!curriculo.isEmpty()) {
            candidatoInstance.curriculo = fileUploadService.uploadFile(curriculo, curriculo.getOriginalFilename(), "curriculos/" + candidatoInstance.id)
        }
        /*else
            candidatoInstance.curriculo = null*/

        candidatoInstance.save(flush:true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidato.label', default: 'Candidato'), candidatoInstance.id])
                redirect candidatoInstance
            }
            '*' { respond candidatoInstance, [status: CREATED] }
        }
    }

    def edit(Candidato candidatoInstance) {
        respond candidatoInstance
    }

    @Transactional
    def update(Candidato candidatoInstance) {
        if (candidatoInstance == null) {
            notFound()
            return
        }

        if (candidatoInstance.hasErrors()) {
            respond candidatoInstance.errors, view:'edit'
            return
        }
        // find the phones that are marked for deletion
        def _certificadosToBeDeleted = []

        def cont = 0
        candidatoInstance.certificados.each {
            if (params["certificados[" + cont + "].deleted"] == "true") {
                _certificadosToBeDeleted << it
            }
            cont++
        }

        // if there are phones to be deleted remove them all
        if (_certificadosToBeDeleted) {
            candidatoInstance.certificados.removeAll(_certificadosToBeDeleted)
        }

        def _candidatosLinguasToBeDeleted = []
        cont = 0
        candidatoInstance.candidatosLingua.each {
            if (params["candidatosLingua[" + cont + "].deleted"] == "true") {
                _candidatosLinguasToBeDeleted << it
            }
            cont++
        }

        // if there are phones to be deleted remove them all
        if (_candidatosLinguasToBeDeleted) {
            candidatoInstance.candidatosLingua.removeAll(_candidatosLinguasToBeDeleted)
        }

        def _experienciasProfissionaisToBeDeleted = []
        cont = 0
        candidatoInstance.experienciasProfissionais.each {
            if (params["experienciasProfissionais[" + cont + "].deleted"] == "true") {
                _experienciasProfissionaisToBeDeleted << it
            }
            cont++
        }

        // if there are phones to be deleted remove them all
        if (_experienciasProfissionaisToBeDeleted) {
            candidatoInstance.experienciasProfissionais.removeAll(_experienciasProfissionaisToBeDeleted)
        }

        def _formacoesAcademicasToBeDeleted = []
        cont = 0
        candidatoInstance.formacoesAcademicas.each {
            if (params["formacoesAcademicas[" + cont + "].deleted"] == "true") {
                _formacoesAcademicasToBeDeleted << it
            }
            cont++
        }

        // if there are phones to be deleted remove them all
        if (_formacoesAcademicasToBeDeleted) {
            candidatoInstance.formacoesAcademicas.removeAll(_formacoesAcademicasToBeDeleted)
        }

        def extensoes_foto = ['jpg', 'jpeg', 'gif', 'png']
        def foto = request.getFile('fileFoto')
    
        if (!foto.isEmpty()) {
            if(!extensoes_foto.contains(foto.getOriginalFilename().split("\\.")[1].toLowerCase()))
            {
                request.withFormat {
                    form multipartForm {
                            candidatoInstance.errors.rejectValue(
                            'foto',
                            'Formato da foto não é de imagem')
                        render(view: "edit", model: [candidatoInstance: candidatoInstance])
                    }
                    '*'{ respond candidatoInstance, [status: error] }
                }
                return;
            }
            candidatoInstance.foto = fileUploadService.uploadFile(foto, foto.getOriginalFilename(), "fotos/" + candidatoInstance.id)
        }
        /*else
            candidatoInstance.foto = null*/

        def curriculo = request.getFile('fileCurriculo')
        if (!curriculo.isEmpty()) {
            candidatoInstance.curriculo = fileUploadService.uploadFile(curriculo, curriculo.getOriginalFilename(), "curriculos/" + candidatoInstance.id)
        }
        /*else
            candidatoInstance.curriculo = null*/

        candidatoInstance.save(flush:true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Candidato.label', default: 'Candidato'), candidatoInstance.id])
                redirect candidatoInstance
            }
            '*'{ respond candidatoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Candidato candidatoInstance) {

        if (candidatoInstance == null) {
            notFound()
            return
        }

        candidatoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Candidato.label', default: 'Candidato'), candidatoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidato.label', default: 'Candidato'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def getMunicipios() {
        def uf = params.uf
        def locations = Municipio.findAll(sort:"nome")
        {
            unidadeFederativa.id == uf
        }

        render g.select(id:params.update, name: params.update + '.id', value: params.id,
            from:locations, optionKey:'id', noSelection:['':'']
        )
        //render locations as JSON
        //render locations.collectEntries{["id" : it.id, "nome" : it.nome]} as JSON

    }
}
