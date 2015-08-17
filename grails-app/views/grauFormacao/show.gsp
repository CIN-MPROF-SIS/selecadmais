
<%@ page import="selecadmais.GrauFormacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grauFormacao.label', default: 'GrauFormacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Grau de Formação</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<p>
			<strong>
				<g:message code="grauFormacao.descricao.label" default="Descricao" />:
			</strong>
			<g:fieldValue bean="${grauFormacaoInstance}" field="descricao"/>
		</p>

		<g:form url="[resource:grauFormacaoInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${grauFormacaoInstance}">Alterar</g:link>|
				<g:link class="list" action="index">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
