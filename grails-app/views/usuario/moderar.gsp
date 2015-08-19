
<%@ page import="selecadmais.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuário')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		 <div id="list-usuario" class="content scaffold-list" role="main">
			<h1>Aprovar Usuários</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Username')}" />
					
						<th><g:message code="usuario.pessoa.label" default="Pessoa" /></th>
					
						<g:sortableColumn property="desativada" defaultOrder="desc" title="${message(code: 'usuario.desativada.label', default: 'Desativada')}" />
						
						<th></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "pessoa")}</td>
						
						<td><g:formatBoolean boolean="${usuarioInstance.desativada}" /></td>
						
						<td>
							<g:link action="aprovar" id="${usuarioInstance.id}">Aprovar</g:link>
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
