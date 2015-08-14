
<%@ page import="selecadmais.UnidadeFederativa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unidadeFederativa.label', default: 'UnidadeFederativa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unidadeFederativa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unidadeFederativa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
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
		</div>
	</body>
</html>
