<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'faixaSalarial.label', default: 'FaixaSalarial')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Nova Faixa Salarial</h1>
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
		<g:form url="[resource:faixaSalarialInstance, action:'save']" >
			<g:render template="form"/>
			<div class="actions">
				<g:submitButton name="create" class="save" value="Criar Faixa Salarial" />
			</div>
		</g:form>
		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>
