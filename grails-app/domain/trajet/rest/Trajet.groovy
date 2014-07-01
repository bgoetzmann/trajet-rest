package trajet.rest

class Trajet {
	int numUtilisateur
    int numVehicule
    static hasMany = [points: Localisation]
	/*String localisationDepart
	String	releveKmDepart
	Date dateDepart
	String localisationArrivee
	String releveKmArrivee
	Date dateArrivee
	*/
    static constraints = {
    }
}
