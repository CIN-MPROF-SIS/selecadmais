<%@ page import="selecadmais.Questionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionario.label', default: 'Questionario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<script src="../../js/questionario.js" type="text/javascript" ></script>
	</head>
	<body>
		<h1>Alterar Questionário</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${questionarioInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${questionarioInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:questionarioInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${questionarioInstance?.version}" />
			<g:render template="form"/>
			<div class="actions">
				<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</div>
		</g:form>
		<g:render template='questao' model="['questao':null,'i':'_clone','hidden':true]"/>
		<g:render template='opcao' model="['opcao':null,'i':'_clone', 'io':'_clone','hidden':true]"/>
	</body>
</html>
