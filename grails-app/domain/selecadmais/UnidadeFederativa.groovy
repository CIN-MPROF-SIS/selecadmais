package selecadmais

class UnidadeFederativa {
	String sigla
	String nome

    static constraints = {
    	sigla(size:2..2, blank: false, unique: true)
    	nome(blank: false, unique: true)
    }

	String toString(){
	  return nome
	} 
}
