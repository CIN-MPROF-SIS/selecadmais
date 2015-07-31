package selecadmais

class Candidato extends Pessoa {
	String cpf
	Date dataNascimento
	Municipio naturalidade
	String nacionalidade
	String foto
	String curriculo

    static belongsTo = [ naturalidade : Municipio ] 

    static hasMany = [ 
    	candidatosLingua : CandidatoLingua, 
    	experienciasProfissionais : ExperienciaProfissional,
    	formacoesAcademicas : FormacaoAcademica
	]

    static constraints = {
    	cpf(size:0..14, unique: true, blank:false)
    	nacionalidade(size:0..50,blank:false)
    	foto(size:0..200,nullable:true)
    	curriculo(size:0..200,nullable:true)
    }
}
