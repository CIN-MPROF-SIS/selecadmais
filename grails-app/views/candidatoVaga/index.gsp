
<%@ page import="selecadmais.CandidatoVaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoVaga.label', default: 'CandidatoVaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Minhas Candidaturas</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<th><g:message code="candidatoVaga.candidato.label" default="Candidato" /></th>
				
					<th><g:message code="candidatoVaga.vaga.label" default="Vaga" /></th>
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${candidatoVagaInstanceList}" status="i" var="candidatoVagaInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td>${fieldValue(bean: candidatoVagaInstance, field: "candidato")}</td>
				
					<td>${fieldValue(bean: candidatoVagaInstance, field: "vaga")}</td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${candidatoVagaInstanceCount ?: 0}" />
		</div>
	</body>
</html>
