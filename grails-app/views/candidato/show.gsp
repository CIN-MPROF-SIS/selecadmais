
<%@ page import="selecadmais.Candidato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candidato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candidato" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candidato">

				<g:if test="${candidatoInstance?.foto}">
				<li class="fieldcontain">
					<img src="${candidatoInstance?.foto}" style="max-width:100px;max-height:100px">
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="candidato.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${candidatoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="candidato.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${candidatoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="candidato.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${candidatoInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.logradouro}">
				<li class="fieldcontain">
					<span id="logradouro-label" class="property-label"><g:message code="candidato.logradouro.label" default="Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="logradouro-label"><g:fieldValue bean="${candidatoInstance}" field="logradouro"/></span>
					
				</li>
				</g:if>

				<g:if test="${candidatoInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="candidato.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${candidatoInstance}" field="complemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="candidato.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${candidatoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="candidato.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${candidatoInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="candidato.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${candidatoInstance}" field="cep"/></span>
					
				</li>
				</g:if>

				<g:if test="${candidatoInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="candidato.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:link controller="municipio" action="show" id="${candidatoInstance?.municipio?.id}">${candidatoInstance?.municipio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="candidato.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${candidatoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.nacionalidade}">
				<li class="fieldcontain">
					<span id="nacionalidade-label" class="property-label"><g:message code="candidato.nacionalidade.label" default="Nacionalidade" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidade-label"><g:fieldValue bean="${candidatoInstance}" field="nacionalidade"/></span>
					
				</li>
				</g:if>

				<g:if test="${candidatoInstance?.naturalidade}">
				<li class="fieldcontain">
					<span id="naturalidade-label" class="property-label"><g:message code="candidato.naturalidade.label" default="Naturalidade" /></span>
					
						<span class="property-value" aria-labelledby="naturalidade-label"><g:link controller="municipio" action="show" id="${candidatoInstance?.naturalidade?.id}">${candidatoInstance?.naturalidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="candidato.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${candidatoInstance?.dataNascimento}" format="dd/MM/yyyy"/></span>
					
				</li>
				</g:if>

				<g:if test="${candidatoInstance?.curriculo}">
				<li class="fieldcontain">
					<span id="curriculo-label" class="property-label"><g:message code="candidato.curriculo.label" default="Curriculo" /></span>
					
					<span class="property-value" aria-labelledby="curriculo-label">
						<a href="${candidatoInstance?.curriculo}" target="_blank">Download</a>
					</span>
						
					
				</li>
				</g:if>

				<g:if test="${candidatoInstance?.certificados}">
				<li class="fieldcontain">
					<span id="certificados-label" class="property-label"><g:message code="candidato.certificados.label" default="Certificados" /></span>
					
						<g:each in="${candidatoInstance.certificados}" var="c">
						<span class="property-value" aria-labelledby="certificados-label"><g:link controller="certificado" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>

				<g:if test="${candidatoInstance?.candidatosLingua}">
				<li class="fieldcontain">
					<span id="candidatosLingua-label" class="property-label"><g:message code="candidato.candidatosLingua.label" default="Candidatos Lingua" /></span>
					
						<g:each in="${candidatoInstance.candidatosLingua}" var="c">
						<span class="property-value" aria-labelledby="candidatosLingua-label"><g:link controller="candidatoLingua" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.experienciasProfissionais}">
				<li class="fieldcontain">
					<span id="experienciasProfissionais-label" class="property-label"><g:message code="candidato.experienciasProfissionais.label" default="Experiencias Profissionais" /></span>
					
						<g:each in="${candidatoInstance.experienciasProfissionais}" var="e">
						<span class="property-value" aria-labelledby="experienciasProfissionais-label"><g:link controller="experienciaProfissional" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.formacoesAcademicas}">
				<li class="fieldcontain">
					<span id="formacoesAcademicas-label" class="property-label"><g:message code="candidato.formacoesAcademicas.label" default="Formacoes Academicas" /></span>
					
						<g:each in="${candidatoInstance.formacoesAcademicas}" var="f">
						<span class="property-value" aria-labelledby="formacoesAcademicas-label"><g:link controller="formacaoAcademica" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candidatoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candidatoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
