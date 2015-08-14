package selecadmais

class GrauFormacao {
	String descricao

    static constraints = {
    	descricao(size: 0..50, blank:false, unique:true)
    }

	String toString(){
	  	return descricao
	} 
}
