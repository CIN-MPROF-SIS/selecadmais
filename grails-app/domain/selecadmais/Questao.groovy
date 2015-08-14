package selecadmais

class Questao {
	String descricao
	Float nota

	static belongsTo = [ 
		questionario: Questionario] 

    static constraints = {
    	descricao(size: 5..100, blank:false)
    }

    static hasMany = [ 
    	opcoes : Opcao
	]

	static mapping = {
	    opcoes sort: 'descricao'
	}

	String toString(){
	  	return descricao
	} 
}