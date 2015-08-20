
<%@ page import="selecadmais.ExperienciaProfissional" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'experienciaProfissional.label', default: 'ExperienciaProfissional')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-experienciaProfissional" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-experienciaProfissional" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list experienciaProfissional">
			
				<g:if test="${experienciaProfissionalInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="experienciaProfissional.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:fieldValue bean="${experienciaProfissionalInstance}" field="empresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienciaProfissionalInstance?.areaAtuacao}">
				<li class="fieldcontain">
					<span id="areaAtuacao-label" class="property-label"><g:message code="experienciaProfissional.areaAtuacao.label" default="Area Atuacao" /></span>
					
						<span class="property-value" aria-labelledby="areaAtuacao-label"><g:fieldValue bean="${experienciaProfissionalInstance}" field="areaAtuacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienciaProfissionalInstance?.dataConclusao}">
				<li class="fieldcontain">
					<span id="dataConclusao-label" class="property-label"><g:message code="experienciaProfissional.dataConclusao.label" default="Data Conclusao" /></span>
					
						<span class="property-value" aria-labelledby="dataConclusao-label"><g:formatDate date="${experienciaProfissionalInstance?.dataConclusao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienciaProfissionalInstance?.candidato}">
				<li class="fieldcontain">
					<span id="candidato-label" class="property-label"><g:message code="experienciaProfissional.candidato.label" default="Candidato" /></span>
					
						<span class="property-value" aria-labelledby="candidato-label"><g:link controller="candidato" action="show" id="${experienciaProfissionalInstance?.candidato?.id}">${experienciaProfissionalInstance?.candidato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${experienciaProfissionalInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="experienciaProfissional.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${experienciaProfissionalInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:experienciaProfissionalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${experienciaProfissionalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
