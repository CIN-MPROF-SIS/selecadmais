package selecadmais

class Resposta {

	static belongsTo = [ 
		opcao: Opcao,
		candidato: Candidato] 

    static constraints = {
    }
}
