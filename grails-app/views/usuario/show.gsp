
<%@ page import="selecadmais.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Usuário</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		
		<g:if test="${usuarioInstance?.username}">
		<p>
			<b><g:message code="usuario.username.label" default="Username" />:</b>
			
			<g:fieldValue bean="${usuarioInstance}" field="username"/>
			
		</p>
		</g:if>
	
		<g:if test="${usuarioInstance?.pessoa}">
		<p>
			<b><g:message code="usuario.pessoa.label" default="Pessoa" />:</b>
			
			<g:link controller="pessoa" action="show" id="${usuarioInstance?.pessoa?.id}">${usuarioInstance?.pessoa?.encodeAsHTML()}</g:link>
			
		</p>
		</g:if>
	
		<g:if test="${usuarioInstance?.accountExpired}">
		<p>
			<b><g:message code="usuario.accountExpired.label" default="Account Expired" />:</b>
			
			<g:formatBoolean boolean="${usuarioInstance?.accountExpired}" />
			
		</p>
		</g:if>
	
		<g:if test="${usuarioInstance?.accountLocked}">
		<p>
			<b><g:message code="usuario.accountLocked.label" default="Account Locked" /></b>
			
			<g:formatBoolean boolean="${usuarioInstance?.accountLocked}" />
			
		</p>
		</g:if>
	
		<g:if test="${usuarioInstance?.enabled}">
		<p>
			<b><g:message code="usuario.enabled.label" default="Enabled" />:</b>
			
			<g:formatBoolean boolean="${usuarioInstance?.enabled}" />
			
		</p>
		</g:if>
	
		<g:if test="${usuarioInstance?.passwordExpired}">
		<p>
			<b><g:message code="usuario.passwordExpired.label" default="Password Expired" />:</b>
			
			<g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" />
			
		</p>
		</g:if>
		<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${usuarioInstance}">Alterar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
