package selecadmais

class CandidatoVaga {
	Boolean selecionado

	static belongsTo = [ 
		candidato : Candidato,
		vaga : Vaga] 

    static constraints = {
    	selecionado(defaultValue: false)
    }
}
