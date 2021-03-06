
<%@ page import="selecadmais.Certificado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'certificado.label', default: 'Certificado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-certificado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-certificado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'certificado.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="certificado.candidato.label" default="Candidato" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${certificadoInstanceList}" status="i" var="certificadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${certificadoInstance.id}">${fieldValue(bean: certificadoInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: certificadoInstance, field: "candidato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${certificadoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
