
<%@ page import="selecadmais.Questionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionario.label', default: 'Questionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-questionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-questionario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list questionario">
			
				<g:if test="${questionarioInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="questionario.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${questionarioInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionarioInstance?.questoes}">
				<li class="fieldcontain">
					<span id="questoes-label" class="property-label"><g:message code="questionario.questoes.label" default="Questoes" /></span>
					
						<g:each in="${questionarioInstance.questoes}" var="q">
						<span class="property-value" aria-labelledby="questoes-label"><g:link controller="questao" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${questionarioInstance?.vaga}">
				<li class="fieldcontain">
					<span id="vaga-label" class="property-label"><g:message code="questionario.vaga.label" default="Vaga" /></span>
					
						<span class="property-value" aria-labelledby="vaga-label"><g:link controller="vaga" action="show" id="${questionarioInstance?.vaga?.id}">${questionarioInstance?.vaga?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:questionarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${questionarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
