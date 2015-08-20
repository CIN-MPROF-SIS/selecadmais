
<%@ page import="selecadmais.FormacaoAcademica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formacaoAcademica.label', default: 'FormacaoAcademica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-formacaoAcademica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-formacaoAcademica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="instituicao" title="${message(code: 'formacaoAcademica.instituicao.label', default: 'Instituicao')}" />
					
						<g:sortableColumn property="dataConclusao" title="${message(code: 'formacaoAcademica.dataConclusao.label', default: 'Data Conclusao')}" />
					
						<th><g:message code="formacaoAcademica.candidato.label" default="Candidato" /></th>
					
						<g:sortableColumn property="cargaHoraria" title="${message(code: 'formacaoAcademica.cargaHoraria.label', default: 'Carga Horaria')}" />
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'formacaoAcademica.dataInicio.label', default: 'Data Inicio')}" />
					
						<th><g:message code="formacaoAcademica.grauFormacao.label" default="Grau Formacao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${formacaoAcademicaInstanceList}" status="i" var="formacaoAcademicaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${formacaoAcademicaInstance.id}">${fieldValue(bean: formacaoAcademicaInstance, field: "instituicao")}</g:link></td>
					
						<td><g:formatDate date="${formacaoAcademicaInstance.dataConclusao}" /></td>
					
						<td>${fieldValue(bean: formacaoAcademicaInstance, field: "candidato")}</td>
					
						<td>${fieldValue(bean: formacaoAcademicaInstance, field: "cargaHoraria")}</td>
					
						<td><g:formatDate date="${formacaoAcademicaInstance.dataInicio}" /></td>
					
						<td>${fieldValue(bean: formacaoAcademicaInstance, field: "grauFormacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${formacaoAcademicaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
