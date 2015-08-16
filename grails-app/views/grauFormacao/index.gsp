
<%@ page import="selecadmais.GrauFormacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grauFormacao.label', default: 'GrauFormacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Lista de Graus de Formação</h1>
		<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="descricao" title="${message(code: 'grauFormacao.descricao.label', default: 'Descricao')}" />
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${grauFormacaoInstanceList}" status="i" var="grauFormacaoInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${grauFormacaoInstance.id}">${fieldValue(bean: grauFormacaoInstance, field: "descricao")}</g:link></td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${grauFormacaoInstanceCount ?: 0}" />
		</div>
		<g:link class="create" action="create">Novo Grau de Formação</g:link>
	</body>
</html>
