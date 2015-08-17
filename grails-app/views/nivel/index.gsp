
<%@ page import="selecadmais.Nivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Lista Níveis</h1>
		<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="descricao" title="${message(code: 'nivel.descricao.label', default: 'Descrição')}" />
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${nivelInstanceList}" status="i" var="nivelInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${nivelInstance.id}">${fieldValue(bean: nivelInstance, field: "descricao")}</g:link></td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${nivelInstanceCount ?: 0}" />
		</div>

		<g:link class="create" action="create">Novo Nível</g:link>
	</body>
</html>
