package selecadmais

class Contratante extends Pessoa {
	String cpf
	Date dataNascimento

	String cnpj
	String logo
	String inscricaoEstadual

    static constraints = {
    	cpf(size:0..14, unique: true, blank:true, nullable: true)
        cnpj(size:0..14, unique: true, blank:true, nullable: true)
    	inscricaoEstadual(size:0..50,blank:true, nullable: true)
    	logo(size:0..200,blank:true, nullable: true)
    	
    }

    String toString(){
        return nome
    }
}
