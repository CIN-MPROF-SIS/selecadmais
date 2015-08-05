package selecadmais

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class SecuserSecRole implements Serializable {

	private static final long serialVersionUID = 1

	Secuser secuser
	SecRole secRole

	SecuserSecRole(Secuser u, SecRole r) {
		this()
		secuser = u
		secRole = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof SecuserSecRole)) {
			return false
		}

		other.secuser?.id == secuser?.id && other.secRole?.id == secRole?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (secuser) builder.append(secuser.id)
		if (secRole) builder.append(secRole.id)
		builder.toHashCode()
	}

	static SecuserSecRole get(long secuserId, long secRoleId) {
		criteriaFor(secuserId, secRoleId).get()
	}

	static boolean exists(long secuserId, long secRoleId) {
		criteriaFor(secuserId, secRoleId).count()
	}

	private static DetachedCriteria criteriaFor(long secuserId, long secRoleId) {
		SecuserSecRole.where {
			secuser == Secuser.load(secuserId) &&
			secRole == SecRole.load(secRoleId)
		}
	}

	static SecuserSecRole create(Secuser secuser, SecRole secRole, boolean flush = false) {
		def instance = new SecuserSecRole(secuser, secRole)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Secuser u, SecRole r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = SecuserSecRole.where { secuser == u && secRole == r }.deleteAll()

		if (flush) { SecuserSecRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Secuser u, boolean flush = false) {
		if (u == null) return

		SecuserSecRole.where { secuser == u }.deleteAll()

		if (flush) { SecuserSecRole.withSession { it.flush() } }
	}

	static void removeAll(SecRole r, boolean flush = false) {
		if (r == null) return

		SecuserSecRole.where { secRole == r }.deleteAll()

		if (flush) { SecuserSecRole.withSession { it.flush() } }
	}

	static constraints = {
		secRole validator: { SecRole r, SecuserSecRole ur ->
			if (ur.secuser == null || ur.secuser.id == null) return
			boolean existing = false
			SecuserSecRole.withNewSession {
				existing = SecuserSecRole.exists(ur.secuser.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['secuser', 'secRole']
		version false
	}
}
