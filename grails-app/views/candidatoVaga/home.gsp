
<%@ page import="selecadmais.CandidatoVaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoVaga.label', default: 'CandidatoVaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Candidaturas</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<th>Cargo</th>
					<th>Cidade</th>
					<th>Faixa Salarial</th>
					<th>Quantidade</th>
					<th>Início Inscrição</th>
					<th>Término Inscrição</th>
					<th></th>
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${vagas}" status="i" var="vaga">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td>${vaga}</td>
				
					<td>${vaga.municipio}</td>
					<td>${vaga.faixaSalarial}</td>
					<td>${vaga.quantidade}</td>
					<td><g:formatDate date="${vaga.dataInicioInscricao}" format="dd/MM/yyyy"/></td>
					<td><g:formatDate date="${vaga.dataTerminoInscricao}" format="dd/MM/yyyy"/></td>
					<td>
						<g:if test="${candidaturas.containsKey(vaga.id)}">
							Já Candidatou
						</g:if>
						<g:if test="${!candidaturas.containsKey(vaga.id)}">
							<g:link action="candidatar" id="${vaga.id}">Candidatar</g:link>
						</g:if>
					</td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
	</body>
</html>
