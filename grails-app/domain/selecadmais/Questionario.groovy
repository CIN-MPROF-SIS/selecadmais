package selecadmais

class Questionario {
	String descricao

	static belongsTo = [ 
		vaga : Vaga] 

    static hasMany = [ 
    	questoes : Questao
	]

    static constraints = {
    	descricao(size: 5..100, blank:false)
    }

	static mapping = {
	    questoes sort: 'descricao'
	}

	String toString(){
	  	return descricao
	} 
}
