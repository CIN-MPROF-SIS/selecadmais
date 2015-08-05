package selecadmais

class ExperienciaProfissional {
	String empresa
	String areaAtuacao
	Date dataInicio
	Date dataConclusao
	Candidato candidato

    static belongsTo = [ candidato : Candidato ] 

    static constraints = {
    	empresa(size:0..100, blank:false)
    	areaAtuacao(size:0..100, blank:false)
    	dataConclusao(nullable: true)
    }

    String toString(){
        return "${empresa} - ${areaAtuacao} - " + dataInicio.format('dd/MM/yyyy') + " - " + dataConclusao.format('dd/MM/yyyy')
    } 
}
