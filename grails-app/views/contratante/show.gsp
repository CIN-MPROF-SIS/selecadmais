
<%@ page import="selecadmais.Contratante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contratante.label', default: 'Contratante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contratante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contratante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contratante">
			
				<g:if test="${contratanteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="contratante.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${contratanteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="contratante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contratanteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="contratante.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${contratanteInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.logradouro}">
				<li class="fieldcontain">
					<span id="logradouro-label" class="property-label"><g:message code="contratante.logradouro.label" default="Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="logradouro-label"><g:fieldValue bean="${contratanteInstance}" field="logradouro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="contratante.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${contratanteInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="contratante.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${contratanteInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="contratante.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${contratanteInstance}" field="cep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="contratante.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${contratanteInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.nacionalidade}">
				<li class="fieldcontain">
					<span id="nacionalidade-label" class="property-label"><g:message code="contratante.nacionalidade.label" default="Nacionalidade" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidade-label"><g:fieldValue bean="${contratanteInstance}" field="nacionalidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.naturalidade}">
				<li class="fieldcontain">
					<span id="naturalidade-label" class="property-label"><g:message code="contratante.naturalidade.label" default="Naturalidade" /></span>
					
						<span class="property-value" aria-labelledby="naturalidade-label"><g:link controller="municipio" action="show" id="${contratanteInstance?.naturalidade?.id}">${contratanteInstance?.naturalidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.inscricaoEstadual}">
				<li class="fieldcontain">
					<span id="inscricaoEstadual-label" class="property-label"><g:message code="contratante.inscricaoEstadual.label" default="Inscricao Estadual" /></span>
					
						<span class="property-value" aria-labelledby="inscricaoEstadual-label"><g:fieldValue bean="${contratanteInstance}" field="inscricaoEstadual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="contratante.logo.label" default="Logo" /></span>
					
						<span class="property-value" aria-labelledby="logo-label"><g:fieldValue bean="${contratanteInstance}" field="logo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="contratante.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${contratanteInstance}" field="complemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.cpnj}">
				<li class="fieldcontain">
					<span id="cpnj-label" class="property-label"><g:message code="contratante.cpnj.label" default="Cpnj" /></span>
					
						<span class="property-value" aria-labelledby="cpnj-label"><g:fieldValue bean="${contratanteInstance}" field="cpnj"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="contratante.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${contratanteInstance?.dataNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contratanteInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="contratante.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:link controller="municipio" action="show" id="${contratanteInstance?.municipio?.id}">${contratanteInstance?.municipio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contratanteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contratanteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
