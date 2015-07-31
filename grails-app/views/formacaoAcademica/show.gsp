
<%@ page import="selecadmais.FormacaoAcademica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'formacaoAcademica.label', default: 'FormacaoAcademica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-formacaoAcademica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-formacaoAcademica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list formacaoAcademica">
			
				<g:if test="${formacaoAcademicaInstance?.instituicao}">
				<li class="fieldcontain">
					<span id="instituicao-label" class="property-label"><g:message code="formacaoAcademica.instituicao.label" default="Instituicao" /></span>
					
						<span class="property-value" aria-labelledby="instituicao-label"><g:fieldValue bean="${formacaoAcademicaInstance}" field="instituicao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formacaoAcademicaInstance?.dataConclusao}">
				<li class="fieldcontain">
					<span id="dataConclusao-label" class="property-label"><g:message code="formacaoAcademica.dataConclusao.label" default="Data Conclusao" /></span>
					
						<span class="property-value" aria-labelledby="dataConclusao-label"><g:formatDate date="${formacaoAcademicaInstance?.dataConclusao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formacaoAcademicaInstance?.candidato}">
				<li class="fieldcontain">
					<span id="candidato-label" class="property-label"><g:message code="formacaoAcademica.candidato.label" default="Candidato" /></span>
					
						<span class="property-value" aria-labelledby="candidato-label"><g:link controller="candidato" action="show" id="${formacaoAcademicaInstance?.candidato?.id}">${formacaoAcademicaInstance?.candidato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${formacaoAcademicaInstance?.cargaHoraria}">
				<li class="fieldcontain">
					<span id="cargaHoraria-label" class="property-label"><g:message code="formacaoAcademica.cargaHoraria.label" default="Carga Horaria" /></span>
					
						<span class="property-value" aria-labelledby="cargaHoraria-label"><g:fieldValue bean="${formacaoAcademicaInstance}" field="cargaHoraria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${formacaoAcademicaInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="formacaoAcademica.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${formacaoAcademicaInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${formacaoAcademicaInstance?.grauFormacao}">
				<li class="fieldcontain">
					<span id="grauFormacao-label" class="property-label"><g:message code="formacaoAcademica.grauFormacao.label" default="Grau Formacao" /></span>
					
						<span class="property-value" aria-labelledby="grauFormacao-label"><g:link controller="grauFormacao" action="show" id="${formacaoAcademicaInstance?.grauFormacao?.id}">${formacaoAcademicaInstance?.grauFormacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:formacaoAcademicaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${formacaoAcademicaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
