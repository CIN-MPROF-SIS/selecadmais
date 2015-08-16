package selecadmais

class AppController {

	def springSecurityService

	def home() {

		def principal = springSecurityService.principal
		String username = principal.username
		def authorities = principal.authorities // a Collection of GrantedAuthority
		boolean enabled = principal.enabled
		println(username)
	
		if (authorities.toString() == '[ROLE_ANONYMOUS]')
			redirect controller:"vaga", action:"vagasDisponiveis"

		if (authorities.toString()  == '[PAPEL_MODERADOR]')
			redirect controller:"vaga", action:"index"

		if (authorities.toString()  == '[PAPEL_CANDITATO]')
			redirect controller:"vaga", action:"index"

		if (authorities.toString()  == '[PAPEL_CONTRATANTE]')
			redirect controller:"vaga", action:"index"

	}
}