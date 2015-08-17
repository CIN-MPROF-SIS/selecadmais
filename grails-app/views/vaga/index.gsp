
<%@ page import="selecadmais.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Vagas Ofertadas</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table>
		<thead>
				<tr>
				
					<g:sortableColumn property="descricao" title="${message(code: 'vaga.descricao.label', default: 'Descrição')}" />
				
					<g:sortableColumn property="cargo" title="${message(code: 'vaga.cargo.label', default: 'Cargo')}" />
				
					<g:sortableColumn property="dataCadastro" title="${message(code: 'vaga.dataCadastro.label', default: 'Data Cadastro')}" />
				
					<g:sortableColumn property="dataInicioInscricao" title="${message(code: 'vaga.dataInicioInscricao.label', default: 'Data Início Inscrição')}" />
				
					<g:sortableColumn property="dataTerminoInscricao" title="${message(code: 'vaga.dataTerminoInscricao.label', default: 'Data Término Inscrição')}" />
					<th></th>
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${vagaInstanceList}" status="i" var="vagaInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${vagaInstance.id}">${fieldValue(bean: vagaInstance, field: "descricao")}</g:link></td>
				
					<td>${fieldValue(bean: vagaInstance, field: "cargo")}</td>
				
					<td><g:formatDate date="${vagaInstance.dataCadastro}" format="dd/MM/yyyy HH:mm:ss"/></td>
				
					<td><g:formatDate date="${vagaInstance.dataInicioInscricao}" format="dd/MM/yyyy"/></td>
				
					<td><g:formatDate date="${vagaInstance.dataTerminoInscricao}" format="dd/MM/yyyy"/></td>
				
					<td><g:link controller="candidatoVaga" action="avaliar" params='[vaga:"${vagaInstance.id}"]'>Selecionar</g:link></td>
				</tr>
			</g:each>
			</tbody>
		</table>

		<div class="pagination">
			<g:paginate total="${vagaInstanceCount ?: 0}" />
		</div>
		<br/>
		<g:link class="create" action="create">Ofertar Vaga</g:link>
	</body>
</html>
