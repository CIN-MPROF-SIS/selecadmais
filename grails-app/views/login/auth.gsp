<!DOCTYPE html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title>Login</title>
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="flash_alert" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${candidatoInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${candidatoInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<form id="loginForm" class="cssform" autocomplete="off" method="POST" action="/selecadmais/j_spring_security_check">
		<input type='text' class='text_' name='j_username' id='session_login' placeholder="Login"/>
		<input type='password' class='text_' name='j_password' id='session_password' placeholder="Senha"/>
		<input class="btn-submit" type="submit" value="Log in" name="commit">
	</form>
	</body>
</html>