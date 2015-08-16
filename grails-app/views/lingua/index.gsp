
<%@ page import="selecadmais.Lingua" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lingua.label', default: 'Lingua')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Lista de Línguas</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="descricao" title="${message(code: 'lingua.descricao.label', default: 'Descricao')}" />
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${linguaInstanceList}" status="i" var="linguaInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${linguaInstance.id}">${fieldValue(bean: linguaInstance, field: "descricao")}</g:link></td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${linguaInstanceCount ?: 0}" />
		</div>
		<g:link class="create" action="create">Nova Língua</g:link>
	</body>
</html>
