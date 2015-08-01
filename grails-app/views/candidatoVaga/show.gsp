
<%@ page import="selecadmais.CandidatoVaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoVaga.label', default: 'CandidatoVaga')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candidatoVaga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candidatoVaga" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candidatoVaga">
			
				<g:if test="${candidatoVagaInstance?.selecionado}">
				<li class="fieldcontain">
					<span id="selecionado-label" class="property-label"><g:message code="candidatoVaga.selecionado.label" default="Selecionado" /></span>
					
						<span class="property-value" aria-labelledby="selecionado-label"><g:formatBoolean boolean="${candidatoVagaInstance?.selecionado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoVagaInstance?.candidato}">
				<li class="fieldcontain">
					<span id="candidato-label" class="property-label"><g:message code="candidatoVaga.candidato.label" default="Candidato" /></span>
					
						<span class="property-value" aria-labelledby="candidato-label"><g:link controller="candidato" action="show" id="${candidatoVagaInstance?.candidato?.id}">${candidatoVagaInstance?.candidato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoVagaInstance?.vaga}">
				<li class="fieldcontain">
					<span id="vaga-label" class="property-label"><g:message code="candidatoVaga.vaga.label" default="Vaga" /></span>
					
						<span class="property-value" aria-labelledby="vaga-label"><g:link controller="vaga" action="show" id="${candidatoVagaInstance?.vaga?.id}">${candidatoVagaInstance?.vaga?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candidatoVagaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candidatoVagaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
