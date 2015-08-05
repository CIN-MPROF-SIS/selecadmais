import selecadmais.SecRole
import selecadmais.Secuser
import selecadmais.SecuserSecRole

class BootStrap {
	def springSecurityService

	def init = { servletContext ->

		def candidadoRole = SecRole.findByAuthority('ROLE_CANDIDATO') ?: new SecRole(authority: 'ROLE_CANDIDATO').save(failOnError: true)
		def contratanteRole = SecRole.findByAuthority('ROLE_CONTRATANTE') ?: new SecRole(authority: 'ROLE_CONTRATANTE').save(failOnError: true)
		def moderadorRole = SecRole.findByAuthority('ROLE_MODERADOR') ?: new SecRole(authority: 'ROLE_MODERADOR').save(failOnError: true)

		//Criar Usuaários padrão
		def candidadoUser = Secuser.findByUsername('candidato1') ?: new Secuser(
				username: 'candidato1',
				password: springSecurityService.encodePassword('123'),
				enabled: true).save(failOnError: true)
		if (!candidadoUser.authorities.contains(candidadoRole)) {
			SecUserSecRole.create candidadoUser, candidadoRole
		}


		def contratanteUser = Secuser.findByUsername('contratante1') ?: new Secuser(
				username: 'contratante1',
				password: springSecurityService.encodePassword('123'),
				enabled: true).save(failOnError: true)
		if (!contratanteUser.authorities.contains(contratanteRole)) {
			SecUserSecRole.create contratanteUser, contratanteRole
		}



		def moderadorUser = Secuser.findByUsername('moderador') ?: new Secuser(
				username: 'moderador',
				password: springSecurityService.encodePassword('123'),
				enabled: true).save(failOnError: true)
		if (!moderadorUser.authorities.contains(moderadorRole)) {
			SecUserSecRole.create moderadorUser, moderadorRole
		}





	}
	def destroy = {
	}
}
