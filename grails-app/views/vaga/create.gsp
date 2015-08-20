<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<script src="../js/vaga.js" type="text/javascript" ></script>
	</head>
	<body>
	<h1>Nova Vaga</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${vagaInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${vagaInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:vagaInstance, action:'save']" >
			<g:render template="form"/>
			<div class="actions">
				<g:submitButton name="create" class="save" value="Criar Vaga" />
			</div>
		</g:form>
	</body>
</html>
