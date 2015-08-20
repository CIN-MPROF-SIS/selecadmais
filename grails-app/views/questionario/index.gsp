
<%@ page import="selecadmais.Questionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionario.label', default: 'Questionario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Lista Questionários</h1>
		<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="descricao" title="${message(code: 'questionario.descricao.label', default: 'Descricao')}" />
				
					<th></th>
				</tr>
			</thead>
			<tbody>
			<g:each in="${questionarioInstanceList}" status="i" var="questionarioInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>
						<sec:ifLoggedIn>
							<sec:access expression="hasRole('PAPEL_CONTRATANTE')">
								<g:link action="show" id="${questionarioInstance.id}">${fieldValue(bean: questionarioInstance, field: "descricao")}</g:link></td>
							</sec:access>
							<sec:access expression="hasRole('PAPEL_CANDIDATO')">
								${fieldValue(bean: questionarioInstance, field: "descricao")}
							</sec:access>
						</sec:ifLoggedIn>
					<td>
						<sec:ifLoggedIn>
							<sec:access expression="hasRole('PAPEL_CONTRATANTE')">
								<g:link controller="candidatoVaga" action="mostrarNotasQuestionario" id="${questionarioInstance.id}">Notas Candidatos</g:link></td>
							</sec:access>
							<sec:access expression="hasRole('PAPEL_CANDIDATO')">
								<g:if test="${!respondido[questionarioInstance.id]}">
									<g:link controller="questionario" action="responder" id="${questionarioInstance.id}">Responder</g:link>
								</g:if>
								<g:if test="${respondido[questionarioInstance.id]}">
									Já Respondido
								</g:if>
							</sec:access>
						</sec:ifLoggedIn>
					</td>
				</tr>
			</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${questionarioInstanceCount ?: 0}" />
		</div>

		<sec:ifLoggedIn>
			<sec:access expression="hasRole('PAPEL_CANDIDATO')">

				<g:link controller="candidatoVaga" action="index">Voltar</g:link>
			</sec:access>
			<sec:access expression="hasRole('PAPEL_CONTRATANTE')">
				<g:link controller="vaga" action="index">Voltar</g:link>|
				<g:link controller="questionario" action="create" params="[id:"${params.id}"]">Novo Questionário</g:link>
			</sec:access>
		</sec:ifLoggedIn>
	</body>
</html>
