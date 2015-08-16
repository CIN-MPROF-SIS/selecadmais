<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lingua.label', default: 'Lingua')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Nova Língua</h1>
		<g:if test="${flash.message}">
		<div class="flath_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${linguaInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${linguaInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:linguaInstance, action:'save']" >
			<g:render template="form"/>
			<div class="actions">
				<g:submitButton name="create" class="save" value="Criar Língua" />
			</div>
		</g:form>
		<g:link class="list" action="index">voltar</g:link>
	</body>
</html>
