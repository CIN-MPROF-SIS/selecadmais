import selecadmais.Papel
import selecadmais.Usuario
import selecadmais.UsuarioPapel

class BootStrap {
	def springSecurityService

	def init = { servletContext ->
		
		
		def candidadoRole = Papel.findByAuthority('PAPEL_CANDIDATO') ?: new Papel(authority: 'PAPEL_CANDIDATO').save(failOnError: true,flush: true)
		def contratanteRole = Papel.findByAuthority('PAPEL_CONTRATANTE') ?: new Papel(authority: 'PAPEL_CONTRATANTE').save(failOnError: true,flush: true)
		def moderadorRole = Papel.findByAuthority('PAPEL_MODERADOR') ?: new Papel(authority: 'PAPEL_MODERADOR').save(failOnError: true,flush: true)

		
		//Criar Usuaários padrão
		def candidadoUser = Usuario.findByUsername('candidato1') ?: new Usuario(
				username: 'candidato1',
				password: '123',
				desativada:false,
				enabled: true).save(failOnError: true,flush: true)
		if (!candidadoUser.authorities.contains(candidadoRole)) {
			UsuarioPapel.create candidadoUser, candidadoRole
		}


		def contratanteUser = Usuario.findByUsername('contratante1') ?: new Usuario(
				username: 'contratante1',
				password: '123',
				desativada:true,
				enabled: true).save(failOnError: true,flush: true)
				
				
				
				
		if (!contratanteUser.authorities.contains(contratanteRole)) {
			UsuarioPapel.create contratanteUser, contratanteRole
		}



		def moderadorUser = Usuario.findByUsername('moderador') ?: new Usuario(
				username: 'moderador',
				password: '123',
				desativada:true,
				enabled: true).save(failOnError: true,flush: true)
		if (!moderadorUser.authorities.contains(moderadorRole)) {
			UsuarioPapel.create moderadorUser, moderadorRole
		}

	}
	def destroy = {
	}
}
