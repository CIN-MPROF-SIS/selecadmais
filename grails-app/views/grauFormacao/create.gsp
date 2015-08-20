<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grauFormacao.label', default: 'GrauFormacao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

		<h1>Novo Grau de Formação</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${grauFormacaoInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${grauFormacaoInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:grauFormacaoInstance, action:'save']" >
			<g:render template="form"/>
			<div class="actions">
				<g:submitButton name="create" class="save" value="Criar Grau de Formação" />
			</div>
		</g:form>
		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>
