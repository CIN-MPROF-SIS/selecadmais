package selecadmais

class Vaga {
	Float quantidade
	String descricao
	String cargo
	Date dataCadastro
	Date dataInicioInscricao
	Date dataTerminoInscricao

	static belongsTo = [ 
		contratante : Contratante,
		faixaSalarial : FaixaSalarial,
		municipio : Municipio ] 

    static constraints = {
    	descricao(blank:false)
    	cargo(size:0..100, blank:false)
    	dataCadastro(defaultValue: "now()")
    }

    String toString(){
        return cargo
    }
}
