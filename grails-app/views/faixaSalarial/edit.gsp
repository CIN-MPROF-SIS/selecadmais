<%@ page import="selecadmais.FaixaSalarial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'faixaSalarial.label', default: 'FaixaSalarial')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Alterar Faixa Salarial</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${faixaSalarialInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${faixaSalarialInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:faixaSalarialInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${faixaSalarialInstance?.version}" />
			<g:render template="form"/>
			<div class="actions">
				<g:actionSubmit class="save" action="update" value="Atualizar Faixa Salarial" />
			</div>
		</g:form>
		<g:link class="edit" action="show" resource="${faixaSalarialInstance}">ver</g:link>|
		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>
