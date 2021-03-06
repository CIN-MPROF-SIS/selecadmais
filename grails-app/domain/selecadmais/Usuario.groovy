package selecadmais

import java.awt.GraphicsConfiguration.DefaultBufferCapabilities;

class Usuario implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService

	String username
	String password
	String papel
	boolean enabled = true
	boolean desativada = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	Pessoa pessoa
	
	static belongsTo = [ pessoa : Pessoa ]

	Usuario(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	@Override
	int hashCode() {
		username?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof Usuario && other.username == username)
	}

	@Override
	String toString() {
		username
	}

	Set<Papel> getAuthorities() {
		UsuarioPapel.findAllByUsuario(this)*.papel
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		pessoa(nullable:true)
		papel(nullable:true)	
		desativada(default: true )
		
	}

	static mapping = {
		password column: '`password`'
	}
}
