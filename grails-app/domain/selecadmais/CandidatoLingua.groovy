package selecadmais

class CandidatoLingua {
	static belongsTo = [ 
		candidato : Candidato,
		nivel : Nivel,
		lingua : Lingua ] 

    static constraints = {
    	id composite: ['candidato', 'nivel', 'lingua']
    }

	String toString(){
	  	return "${lingua} - ${nivel}"
	} 
}
