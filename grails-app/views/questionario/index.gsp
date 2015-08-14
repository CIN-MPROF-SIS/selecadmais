
<%@ page import="selecadmais.Questionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionario.label', default: 'Questionario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-questionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-questionario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'questionario.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="questionario.vaga.label" default="Vaga" /></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionarioInstanceList}" status="i" var="questionarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionarioInstance.id}">${fieldValue(bean: questionarioInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: questionarioInstance, field: "vaga")}</td>
						<td>
							<a href="/questionario/responder/${questionarioInstance.id}">Questionário</a>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
