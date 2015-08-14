
<%@ page import="selecadmais.CandidatoLingua" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoLingua.label', default: 'CandidatoLingua')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candidatoLingua" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candidatoLingua" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candidatoLingua">
			
				<g:if test="${candidatoLinguaInstance?.candidato}">
				<li class="fieldcontain">
					<span id="candidato-label" class="property-label"><g:message code="candidatoLingua.candidato.label" default="Candidato" /></span>
					
						<span class="property-value" aria-labelledby="candidato-label"><g:link controller="candidato" action="show" id="${candidatoLinguaInstance?.candidato?.id}">${candidatoLinguaInstance?.candidato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoLinguaInstance?.lingua}">
				<li class="fieldcontain">
					<span id="lingua-label" class="property-label"><g:message code="candidatoLingua.lingua.label" default="Lingua" /></span>
					
						<span class="property-value" aria-labelledby="lingua-label"><g:link controller="lingua" action="show" id="${candidatoLinguaInstance?.lingua?.id}">${candidatoLinguaInstance?.lingua?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoLinguaInstance?.nivel}">
				<li class="fieldcontain">
					<span id="nivel-label" class="property-label"><g:message code="candidatoLingua.nivel.label" default="Nivel" /></span>
					
						<span class="property-value" aria-labelledby="nivel-label"><g:link controller="nivel" action="show" id="${candidatoLinguaInstance?.nivel?.id}">${candidatoLinguaInstance?.nivel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candidatoLinguaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candidatoLinguaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
