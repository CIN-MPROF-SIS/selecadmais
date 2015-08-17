
<%@ page import="selecadmais.FaixaSalarial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'faixaSalarial.label', default: 'FaixaSalarial')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
			<h1>Lista Faixas Salariais</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="valor" title="${message(code: 'faixaSalarial.valor.label', default: 'Valor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${faixaSalarialInstanceList}" status="i" var="faixaSalarialInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${faixaSalarialInstance.id}">${fieldValue(bean: faixaSalarialInstance, field: "valor")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${faixaSalarialInstanceCount ?: 0}" />
			</div>
			<g:link class="create" action="create">Nova Faixa Salarial</g:link>
	</body>
</html>
