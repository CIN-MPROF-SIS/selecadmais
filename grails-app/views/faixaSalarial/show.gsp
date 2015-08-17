
<%@ page import="selecadmais.FaixaSalarial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'faixaSalarial.label', default: 'FaixaSalarial')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Faixa Salarial</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}${flash.type}</div>
		</g:if>
		<p>
			<strong><g:message code="faixaSalarial.valor.label" default="Valor" />:</strong>
			<g:fieldValue bean="${faixaSalarialInstance}" field="valor"/>
		</p>
		<g:form url="[resource:faixaSalarialInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${faixaSalarialInstance}">Alterar</g:link>|
				<g:link class="list" action="index">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
