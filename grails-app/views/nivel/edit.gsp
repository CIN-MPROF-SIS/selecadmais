<%@ page import="selecadmais.Nivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Alterar Nível</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${nivelInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${nivelInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:nivelInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${nivelInstance?.version}" />
			<g:render template="form"/>
			<div class="actions">
				<g:actionSubmit class="save" action="update" value="Atualizar Nível" />
			</div>
		</g:form>
		<g:link class="list" action="show">Ver</g:link>|
		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>
