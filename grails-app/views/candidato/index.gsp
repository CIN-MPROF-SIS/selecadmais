<%@ page import="selecadmais.Candidato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candidato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candidato" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'candidato.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'candidato.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'candidato.telefone.label', default: 'Telefone')}" />
					
						<g:sortableColumn property="logradouro" title="${message(code: 'candidato.logradouro.label', default: 'Logradouro')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'candidato.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="bairro" title="${message(code: 'candidato.bairro.label', default: 'Bairro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidatoInstanceList}" status="i" var="candidatoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candidatoInstance.id}">${fieldValue(bean: candidatoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "telefone")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "logradouro")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "numero")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "bairro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candidatoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
