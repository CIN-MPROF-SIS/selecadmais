package selecadmais

class Pessoa {
	String nome
	String email
	String telefone
	String logradouro
	String complemento
	String numero
	String bairro
	Municipio municipio
	String cep

	static belongsTo = [ municipio : Municipio ] 

    static constraints = {
    	nome(size: 3..100, blank: false)
    	email(size: 3..50, email: true, blank: false)
    	telefone(size: 3..150, blank: false)
    	logradouro(size: 3..100, blank: false)
    	numero(size: 0..20, nullable: true)
    	bairro(size: 3..100, blank: false)
    	cep(size: 0..9, blank: false)
    }

	static mapping = {
        tablePerHierarchy false
	}
}
