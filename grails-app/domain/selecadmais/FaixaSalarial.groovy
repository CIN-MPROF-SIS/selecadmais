package selecadmais

class FaixaSalarial {
	String valor

    static constraints = {
    	valor(size: 0..20, blank:false)
    }
}
