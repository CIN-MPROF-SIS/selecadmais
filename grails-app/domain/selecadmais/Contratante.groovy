package selecadmais

class Contratante extends Pessoa {
	String cpf
	Date dataNascimento
	Municipio naturalidade
	String nacionalidade

	String cpnj
	String logo
	String inscricaoEstadual

    static belongsTo = [ naturalidade : Municipio ] 

    static constraints = {
    	cpf(size:0..14, unique: true, nullable:true)
    	nacionalidade(size:0..50,nullable:true)
    	naturalidade(nullable:true)

    	cpf(size:0..14, unique: true, nullable:true)
    	inscricaoEstadual(size:0..50,nullable:true)
    	logo(size:0..200,nullable:true)
    	
    }
}
