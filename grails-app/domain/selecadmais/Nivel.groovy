package selecadmais

class Nivel {
	String descricao

    static constraints = {
    	descricao(size: 0..50, blank:false)
    }

	String toString(){
	  	return descricao
	} 
}
