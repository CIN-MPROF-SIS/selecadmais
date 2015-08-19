
<%@ page import="selecadmais.CandidatoVaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoVaga.label', default: 'CandidatoVaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:form url="[controller:"candidatoVaga", action:'selecionar']" method="POST">
			<h1>Selecionar Candidatos</h1>
			<g:if test="${flash.message}">
				<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th></th>
					
						<th>Candidato</th>
					
						<th>Email</th>
						<th>Telefone</th>
						<th>Municipio</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidaturas}" status="i" var="candidatura">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>
							<input type="checkbox" name="candidatura" value="${candidatura.id}"  <g:if test="${candidatura.selecionado}"> checked</g:if>/>
						</td>
						<td>${candidatura.candidato.nome}</td>
					
						<td>${candidatura.candidato.email}</td>
					
						<td>${candidatura.candidato.telefone}</td>
						<td>${candidatura.candidato.municipio}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="actions">
				<g:hiddenField name="vaga" value="${vaga.id}" />
				<g:actionSubmit class="edit" controller="candidatoVaga" action="selecionar" value="Selecionar" />
			</div>
		</g:form>
	</body>
</html>
