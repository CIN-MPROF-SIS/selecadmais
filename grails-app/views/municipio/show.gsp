
<%@ page import="selecadmais.Municipio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'municipio.label', default: 'Municipio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Município</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<p>
			<strong>
				<g:message code="municipio.nome.label" default="Nome" />:
			</strong>
			<g:fieldValue bean="${municipioInstance}" field="nome"/>
		</p>
		<p>
			<strong>
				<g:message code="municipio.unidadeFederativa.label" default="Unidade Federativa" />:
			</strong>
			${municipioInstance?.unidadeFederativa?.encodeAsHTML()}
		</p>

		<g:form url="[resource:municipioInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${municipioInstance}">Alterar</g:link>|
				<g:link class="list" action="index">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
