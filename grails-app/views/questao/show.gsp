
<%@ page import="selecadmais.Questao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-questao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-questao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list questao">
			
				<g:if test="${questaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="questao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${questaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questaoInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="questao.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:fieldValue bean="${questaoInstance}" field="nota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questaoInstance?.questionario}">
				<li class="fieldcontain">
					<span id="questionario-label" class="property-label"><g:message code="questao.questionario.label" default="Questionario" /></span>
					
						<span class="property-value" aria-labelledby="questionario-label"><g:link controller="questionario" action="show" id="${questaoInstance?.questionario?.id}">${questaoInstance?.questionario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:questaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${questaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
