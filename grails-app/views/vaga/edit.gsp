<%@ page import="selecadmais.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<script src="../../js/vaga.js" type="text/javascript" ></script>
	</head>
	<body>
		<h1>Alterar Vaga</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${vagaInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${vagaInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:vagaInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${vagaInstance?.version}" />
			<g:render template="form"/>
			<div class="actions">
				<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</div>
		</g:form>
	</body>
</html>
