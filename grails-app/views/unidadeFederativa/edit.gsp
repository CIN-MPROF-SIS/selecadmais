<%@ page import="selecadmais.UnidadeFederativa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unidadeFederativa.label', default: 'UnidadeFederativa')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Alterar Unidade Federativa</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${unidadeFederativaInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${unidadeFederativaInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:unidadeFederativaInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${unidadeFederativaInstance?.version}" />
			<g:render template="form"/>
			<div class="actions">
				<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</div>
		</g:form>
		<g:link class="list" action="show">Ver</g:link>|
		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>
