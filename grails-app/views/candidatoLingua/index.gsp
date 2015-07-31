
<%@ page import="selecadmais.CandidatoLingua" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoLingua.label', default: 'CandidatoLingua')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candidatoLingua" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candidatoLingua" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="candidatoLingua.candidato.label" default="Candidato" /></th>
					
						<th><g:message code="candidatoLingua.lingua.label" default="Lingua" /></th>
					
						<th><g:message code="candidatoLingua.nivel.label" default="Nivel" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidatoLinguaInstanceList}" status="i" var="candidatoLinguaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candidatoLinguaInstance.id}">${fieldValue(bean: candidatoLinguaInstance, field: "candidato")}</g:link></td>
					
						<td>${fieldValue(bean: candidatoLinguaInstance, field: "lingua")}</td>
					
						<td>${fieldValue(bean: candidatoLinguaInstance, field: "nivel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candidatoLinguaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
