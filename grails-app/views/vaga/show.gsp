
<%@ page import="selecadmais.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vaga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vaga" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vaga">
			
				<g:if test="${vagaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="vaga.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${vagaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="vaga.cargo.label" default="Cargo" /></span>
					
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${vagaInstance}" field="cargo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.contratante}">
				<li class="fieldcontain">
					<span id="contratante-label" class="property-label"><g:message code="vaga.contratante.label" default="Contratante" /></span>
					
						<span class="property-value" aria-labelledby="contratante-label"><g:link controller="contratante" action="show" id="${vagaInstance?.contratante?.id}">${vagaInstance?.contratante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.dataInicioInscricao}">
				<li class="fieldcontain">
					<span id="dataInicioInscricao-label" class="property-label"><g:message code="vaga.dataInicioInscricao.label" default="Data Inicio Inscricao" /></span>
					
						<span class="property-value" aria-labelledby="dataInicioInscricao-label">
						<g:formatDate date="${vagaInstance?.dataInicioInscricao}" format="dd/MM/yyyy" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.dataTerminoInscricao}">
				<li class="fieldcontain">
					<span id="dataTerminoInscricao-label" class="property-label"><g:message code="vaga.dataTerminoInscricao.label" default="Data Termino Inscricao" /></span>
					
						<span class="property-value" aria-labelledby="dataTerminoInscricao-label"><g:formatDate date="${vagaInstance?.dataTerminoInscricao}" format="dd/MM/yyyy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.faixaSalarial}">
				<li class="fieldcontain">
					<span id="faixaSalarial-label" class="property-label"><g:message code="vaga.faixaSalarial.label" default="Faixa Salarial" /></span>
					
						<span class="property-value" aria-labelledby="faixaSalarial-label"><g:link controller="faixaSalarial" action="show" id="${vagaInstance?.faixaSalarial?.id}">${vagaInstance?.faixaSalarial?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="vaga.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:link controller="municipio" action="show" id="${vagaInstance?.municipio?.id}">${vagaInstance?.municipio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vagaInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="vaga.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${vagaInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vagaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vagaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
