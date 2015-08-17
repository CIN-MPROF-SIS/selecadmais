<%@ page import="selecadmais.Candidato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<script src="../../js/candidato.js" type="text/javascript" ></script>
		<script src="../js/candidato.js" type="text/javascript" ></script>
	</head>
	<body>
		
		<div id="edit-candidato" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${candidatoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${candidatoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm url="[resource:candidatoInstance, action:'update']" method="POST">
				<g:hiddenField name="version" value="${candidatoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:uploadForm>
		    <g:render template='certificado' model="['certificado':null,'i':'_clone','hidden':true]"/>
		    <g:render template='candidato_lingua' model="['candidatoLingua':null,'i':'_clone','hidden':true]"/>
		    <g:render template='experiencia_profissional' model="['experienciaProfissional':null,'i':'_clone','hidden':true]"/>
		    <g:render template='formacao_academica' model="['formacaoAcademica':null,'i':'_clone','hidden':true]"/>
		</div>
	</body>
</html>
