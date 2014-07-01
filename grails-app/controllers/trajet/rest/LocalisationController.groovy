package trajet.rest



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LocalisationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Localisation.list(params), model:[localisationInstanceCount: Localisation.count()]
    }

    def show(Localisation localisationInstance) {
        respond localisationInstance
    }

    def create() {
        respond new Localisation(params)
    }

    @Transactional
    def save(Localisation localisationInstance) {
        if (localisationInstance == null) {
            notFound()
            return
        }

        if (localisationInstance.hasErrors()) {
            respond localisationInstance.errors, view:'create'
            return
        }

        localisationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'localisationInstance.label', default: 'Localisation'), localisationInstance.id])
                redirect localisationInstance
            }
            '*' { respond localisationInstance, [status: CREATED] }
        }
    }

    def edit(Localisation localisationInstance) {
        respond localisationInstance
    }

    @Transactional
    def update(Localisation localisationInstance) {
        if (localisationInstance == null) {
            notFound()
            return
        }

        if (localisationInstance.hasErrors()) {
            respond localisationInstance.errors, view:'edit'
            return
        }

        localisationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Localisation.label', default: 'Localisation'), localisationInstance.id])
                redirect localisationInstance
            }
            '*'{ respond localisationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Localisation localisationInstance) {

        if (localisationInstance == null) {
            notFound()
            return
        }

        localisationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Localisation.label', default: 'Localisation'), localisationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'localisationInstance.label', default: 'Localisation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
