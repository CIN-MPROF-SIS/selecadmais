
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
			<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<th><g:message code="candidatoVaga.vaga.contratante.label" default="Contratante" /></th>
				
					<th><g:message code="candidatoVaga.vaga.faixaSalarial.label" default="Faixa Salarial" /></th>

					<th><g:message code="candidatoVaga.vaga.municipio.label" default="Município" /></th>

					<th><g:message code="candidatoVaga.vaga.cargo.label" default="Cargo" /></th>

					<th><g:message code="candidatoVaga.vaga.dataCadastro.label" default="Data Cadastro" /></th>

					<th colspan="3"></th>
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${candidatoVagaInstanceList}" status="i" var="candidatoVagaInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td>${fieldValue(bean: candidatoVagaInstance, field: "vaga.contratante")}</td>
				
					<td>${fieldValue(bean: candidatoVagaInstance, field: "vaga.faixaSalarial")}</td>

					<td>${fieldValue(bean: candidatoVagaInstance, field: "vaga.municipio")}</td>

					<td>${fieldValue(bean: candidatoVagaInstance, field: "vaga.cargo")}</td>

					<td>
						<g:formatDate date="${candidatoVagaInstance.vaga.dataCadastro}" format="dd/MM/yyyy HH:mm:ss"/>
					</td>

					<td>
						<g:link controller="vaga" action="show" id="${candidatoVagaInstance.vaga.id}">Ver Vaga</g:link>
					</td>

					<td>
						<g:link action="show" id="${candidatoVagaInstance.id}">Desistir</g:link>
					</td>

					<td>
						<g:if test="${candidatoVagaInstance.selecionado}">
							<g:link controller="questionario" action="vaga" id="${candidatoVagaInstance.vaga.id}">Questionário</g:link>
						</g:if>
					</td>
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${candidatoVagaInstanceCount ?: 0}" />
		</div>
	</body>
</html>
