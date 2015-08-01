package selecadmais

class Opcao {
	String descricao
	Boolean gabarito

	static belongsTo = [ 
		questao: Questao] 

    static constraints = {
    	descricao(size: 5..100, blank:false)
    	gabarito(defaultValue: false)
    }

	String toString(){
	  	return descricao
	} 
}