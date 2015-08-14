
<%@ page import="selecadmais.ExperienciaProfissional" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'experienciaProfissional.label', default: 'ExperienciaProfissional')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-experienciaProfissional" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-experienciaProfissional" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="empresa" title="${message(code: 'experienciaProfissional.empresa.label', default: 'Empresa')}" />
					
						<g:sortableColumn property="areaAtuacao" title="${message(code: 'experienciaProfissional.areaAtuacao.label', default: 'Area Atuacao')}" />
					
						<g:sortableColumn property="dataConclusao" title="${message(code: 'experienciaProfissional.dataConclusao.label', default: 'Data Conclusao')}" />
					
						<th><g:message code="experienciaProfissional.candidato.label" default="Candidato" /></th>
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'experienciaProfissional.dataInicio.label', default: 'Data Inicio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${experienciaProfissionalInstanceList}" status="i" var="experienciaProfissionalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${experienciaProfissionalInstance.id}">${fieldValue(bean: experienciaProfissionalInstance, field: "empresa")}</g:link></td>
					
						<td>${fieldValue(bean: experienciaProfissionalInstance, field: "areaAtuacao")}</td>
					
						<td><g:formatDate date="${experienciaProfissionalInstance.dataConclusao}" /></td>
					
						<td>${fieldValue(bean: experienciaProfissionalInstance, field: "candidato")}</td>
					
						<td><g:formatDate date="${experienciaProfissionalInstance.dataInicio}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${experienciaProfissionalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
