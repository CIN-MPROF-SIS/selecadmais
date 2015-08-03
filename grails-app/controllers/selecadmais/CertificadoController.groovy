package selecadmais



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CertificadoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Certificado.list(params), model:[certificadoInstanceCount: Certificado.count()]
    }

    def show(Certificado certificadoInstance) {
        respond certificadoInstance
    }

    def create() {
        respond new Certificado(params)
    }

    @Transactional
    def save(Certificado certificadoInstance) {
        if (certificadoInstance == null) {
            notFound()
            return
        }

        if (certificadoInstance.hasErrors()) {
            respond certificadoInstance.errors, view:'create'
            return
        }

        certificadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'certificado.label', default: 'Certificado'), certificadoInstance.id])
                redirect certificadoInstance
            }
            '*' { respond certificadoInstance, [status: CREATED] }
        }
    }

    def edit(Certificado certificadoInstance) {
        respond certificadoInstance
    }

    @Transactional
    def update(Certificado certificadoInstance) {
        if (certificadoInstance == null) {
            notFound()
            return
        }

        if (certificadoInstance.hasErrors()) {
            respond certificadoInstance.errors, view:'edit'
            return
        }

        certificadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Certificado.label', default: 'Certificado'), certificadoInstance.id])
                redirect certificadoInstance
            }
            '*'{ respond certificadoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Certificado certificadoInstance) {

        if (certificadoInstance == null) {
            notFound()
            return
        }

        certificadoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Certificado.label', default: 'Certificado'), certificadoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificado.label', default: 'Certificado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
