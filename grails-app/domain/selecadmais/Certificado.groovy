package selecadmais

class Certificado {
	String descricao
	boolean deleted
	
    static transients = [ 'deleted' ]

	static belongsTo = [ 
		candidato : Candidato] 

    static constraints = {
    	descricao(size: 5..100, blank:false)
    }

	String toString(){
	  	return descricao
	} 
}
