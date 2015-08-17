
<%@ page import="selecadmais.Lingua" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lingua.label', default: 'Lingua')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Língua</h1>
		<g:if test="${flash.message}">
		<div class="flash_notica" role="status">${flash.message}</div>
		</g:if>
		<p>
			<strong>
				<g:message code="lingua.descricao.label" default="Descrição" />:
			</strong>
			<g:fieldValue bean="${linguaInstance}" field="descricao"/>
		</p>

		<g:form url="[resource:linguaInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${linguaInstance}">Alterar</g:link>|
				<g:link class="list" action="index">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
