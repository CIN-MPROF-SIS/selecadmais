package selecadmais

class FormacaoAcademica {
	String instituicao
	Float cargaHoraria
	Date dataInicio
	Date dataConclusao
	Candidato candidato
	GrauFormacao grauFormacao

	static belongsTo = [ 
		candidato : Candidato, 
		grauFormacao : GrauFormacao 
	] 

    static constraints = {
    	instituicao(size:0..100, blank:false)
    	dataConclusao(nullable: true)
    }
}
