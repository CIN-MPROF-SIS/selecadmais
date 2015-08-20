
<%@ page import="selecadmais.Questao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-questao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-questao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'questao.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="nota" title="${message(code: 'questao.nota.label', default: 'Nota')}" />
					
						<th><g:message code="questao.questionario.label" default="Questionario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questaoInstanceList}" status="i" var="questaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questaoInstance.id}">${fieldValue(bean: questaoInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: questaoInstance, field: "nota")}</td>
					
						<td>${fieldValue(bean: questaoInstance, field: "questionario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
