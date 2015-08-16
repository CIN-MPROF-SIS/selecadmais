
<%@ page import="selecadmais.Nivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Nível</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<p>
			<strong>
				<g:message code="nivel.descricao.label" default="Descricao" />:
			</strong>
			<g:fieldValue bean="${nivelInstance}" field="descricao"/>
		</p>
		<g:form url="[resource:nivelInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${nivelInstance}">Alterar</g:link>|
				<g:link class="list" action="index">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
