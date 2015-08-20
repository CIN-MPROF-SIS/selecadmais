
<%@ page import="selecadmais.UnidadeFederativa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unidadeFederativa.label', default: 'UnidadeFederativa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Lista de Unidades Federativas</h1>
		<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="sigla" title="${message(code: 'unidadeFederativa.sigla.label', default: 'Sigla')}" />
				
					<g:sortableColumn property="nome" title="${message(code: 'unidadeFederativa.nome.label', default: 'Nome')}" />
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${unidadeFederativaInstanceList}" status="i" var="unidadeFederativaInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${unidadeFederativaInstance.id}">${fieldValue(bean: unidadeFederativaInstance, field: "sigla")}</g:link></td>
				
					<td>${fieldValue(bean: unidadeFederativaInstance, field: "nome")}</td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${unidadeFederativaInstanceCount ?: 0}" />
		</div>
		<g:link class="create" action="create">Nova Unidade Federativa</g:link>
	</body>
</html>
