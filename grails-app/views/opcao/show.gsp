
<%@ page import="selecadmais.Opcao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opcao.label', default: 'Opcao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opcao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opcao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opcao">
			
				<g:if test="${opcaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="opcao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${opcaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.gabarito}">
				<li class="fieldcontain">
					<span id="gabarito-label" class="property-label"><g:message code="opcao.gabarito.label" default="Gabarito" /></span>
					
						<span class="property-value" aria-labelledby="gabarito-label"><g:formatBoolean boolean="${opcaoInstance?.gabarito}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcaoInstance?.questao}">
				<li class="fieldcontain">
					<span id="questao-label" class="property-label"><g:message code="opcao.questao.label" default="Questao" /></span>
					
						<span class="property-value" aria-labelledby="questao-label"><g:link controller="questao" action="show" id="${opcaoInstance?.questao?.id}">${opcaoInstance?.questao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opcaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opcaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
