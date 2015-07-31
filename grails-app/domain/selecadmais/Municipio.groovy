package selecadmais

class Municipio {
	String nome
	UnidadeFederativa unidadeFederativa;

    static constraints = {
    	nome(blank: false, unique: true)
    }

	static belongsTo = [ unidadeFederativa : UnidadeFederativa ] 

	String toString(){
	  return nome
	} 
}
