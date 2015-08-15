<%@ page import="selecadmais.Contratante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contratante.label', default: 'Contratante')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<script src="../../js/contratante.js" type="text/javascript" ></script>
	</head>
	<body>
		<h1>Perfil</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${contratanteInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${contratanteInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:uploadForm url="[resource:contratanteInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${contratanteInstance?.version}" />
			<g:render template="form"/>
			<div class="actions">
				<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</div>
		</g:uploadForm>

		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>