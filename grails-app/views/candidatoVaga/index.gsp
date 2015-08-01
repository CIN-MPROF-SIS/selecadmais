
<%@ page import="selecadmais.CandidatoVaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoVaga.label', default: 'CandidatoVaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candidatoVaga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candidatoVaga" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="selecionado" title="${message(code: 'candidatoVaga.selecionado.label', default: 'Selecionado')}" />
					
						<th><g:message code="candidatoVaga.candidato.label" default="Candidato" /></th>
					
						<th><g:message code="candidatoVaga.vaga.label" default="Vaga" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidatoVagaInstanceList}" status="i" var="candidatoVagaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candidatoVagaInstance.id}">${fieldValue(bean: candidatoVagaInstance, field: "selecionado")}</g:link></td>
					
						<td>${fieldValue(bean: candidatoVagaInstance, field: "candidato")}</td>
					
						<td>${fieldValue(bean: candidatoVagaInstance, field: "vaga")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candidatoVagaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
