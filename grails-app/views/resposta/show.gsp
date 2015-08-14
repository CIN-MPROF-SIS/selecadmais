
<%@ page import="selecadmais.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-resposta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-resposta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resposta">
			
				<g:if test="${respostaInstance?.candidato}">
				<li class="fieldcontain">
					<span id="candidato-label" class="property-label"><g:message code="resposta.candidato.label" default="Candidato" /></span>
					
						<span class="property-value" aria-labelledby="candidato-label"><g:link controller="candidato" action="show" id="${respostaInstance?.candidato?.id}">${respostaInstance?.candidato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaInstance?.opcao}">
				<li class="fieldcontain">
					<span id="opcao-label" class="property-label"><g:message code="resposta.opcao.label" default="Opcao" /></span>
					
						<span class="property-value" aria-labelledby="opcao-label"><g:link controller="opcao" action="show" id="${respostaInstance?.opcao?.id}">${respostaInstance?.opcao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:respostaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${respostaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
