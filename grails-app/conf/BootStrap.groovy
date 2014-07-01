import trajet.rest.*

class BootStrap {

    def init = { servletContext ->
    	/* 
    	new Localisation(timeLocalisation: 'le 29 juin à 14 heures',
    					pointLocalisation: 'Digne',
    					releveKm: '39800'))
		new Localisation(timeLocalisation: 'le 29 juin à 15 heures',
    					pointLocalisation: 'Sisteron',
    					releveKm: '39900'))
		*/

    	def trajet1 = new Trajet(numUtilisateur: 1,
    							 numVehicule: 1
    							 )
    	if (!trajet1.save()){
    		trajet1.errors.allErrors.each{error ->
    			println "Une erreur s'est produit avec le trajet1; ${trajet1}"}
    	}
    	def trajet2 = new Trajet(numUtilisateur: 2,
    							numVehicule: 1)
    	if (!trajet2.save()){
    		trajet2.errors.allErrors.each{error ->
    			println "Une erreur s'est produit avec le trajet2; ${trajet2}"}
    	}
    	def t1 = Trajet.get(1)
    	t1.addToPoints(new Localisation(timeLocalisation: 'le 30 juin à 19 heures',
    					pointLocalisation: 'Digne',
    					releveKm: '40000'))
    	t1.addToPoints(new Localisation(timeLocalisation: 'le 1 juillet à 6 heures',
    					pointLocalisation: 'Paris',
    					releveKm: '40880'))
    	t1.save()
    }
    def destroy = {
    }
}
