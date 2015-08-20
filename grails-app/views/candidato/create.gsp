<!DOCTYPE html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title>Perfil</title>
		<script src="../js/candidato.js" type="text/javascript" ></script>
	</head>
	<body>
		<h1>Perfil</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${candidatoInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${candidatoInstance}" var="error">
			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
		</g:hasErrors>
		<g:form url="[resource:candidatoInstance, action:'save']" enctype="multipart/form-data">
			<g:render template="form"/>
			<div class="actions">
				<g:submitButton name="create" class="save" value="Salvar" />
			</div>
		</g:form>
		<g:link class="list" action="index">Voltar</g:link>
	    <g:render template='certificado' model="['certificado':null,'i':'_clone','hidden':true]"/>
	    <g:render template='candidato_lingua' model="['candidatoLingua':null,'i':'_clone','hidden':true]"/>
	    <g:render template='experiencia_profissional' model="['experienciaProfissional':null,'i':'_clone','hidden':true]"/>
	    <g:render template='formacao_academica' model="['formacaoAcademica':null,'i':'_clone','hidden':true]"/>

	</body>
</html>
