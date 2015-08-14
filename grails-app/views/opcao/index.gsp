
<%@ page import="selecadmais.Opcao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opcao.label', default: 'Opcao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-opcao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-opcao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'opcao.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="gabarito" title="${message(code: 'opcao.gabarito.label', default: 'Gabarito')}" />
					
						<th><g:message code="opcao.questao.label" default="Questao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${opcaoInstanceList}" status="i" var="opcaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${opcaoInstance.id}">${fieldValue(bean: opcaoInstance, field: "descricao")}</g:link></td>
					
						<td><g:formatBoolean boolean="${opcaoInstance.gabarito}" /></td>
					
						<td>${fieldValue(bean: opcaoInstance, field: "questao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${opcaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
