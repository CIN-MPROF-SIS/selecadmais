
<%@ page import="selecadmais.Municipio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'municipio.label', default: 'Municipio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Lista de Municípios</h1>
		<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="nome" title="${message(code: 'municipio.nome.label', default: 'Nome')}" />
				
					<th><g:message code="municipio.unidadeFederativa.label" default="Unidade Federativa" /></th>
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${municipioInstanceList}" status="i" var="municipioInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${municipioInstance.id}">${fieldValue(bean: municipioInstance, field: "nome")}</g:link></td>
				
					<td>${fieldValue(bean: municipioInstance, field: "unidadeFederativa")}</td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${municipioInstanceCount ?: 0}" />
		</div>
		<g:link class="create" action="create">Novo Município</g:link>
	</body>
</html>
