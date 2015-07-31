package selecadmais

class CandidatoLingua {
	Candidato candidato
	Nivel nivel
	Lingua lingua

	static belongsTo = [ 
		candidato : Candidato,
		nivel : Nivel,
		lingua : Lingua ] 

    static constraints = {
    	id composite: ['candidato', 'nivel', 'lingua']
    }
}
