
<%@ page import="selecadmais.Candidato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Perfil</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<ol class="property-list candidato">

			<g:if test="${candidatoInstance?.foto}">
			<p>
				<img src="${candidatoInstance?.foto}" style="max-width:100px;max-height:100px">
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.nome}">
			<p>
				<b>
					<g:message code="candidato.nome.label" default="Nome" />:
				</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="nome"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.email}">
			<p>
				<b><g:message code="candidato.email.label" default="Email" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="email"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.telefone}">
			<p>
				<b><g:message code="candidato.telefone.label" default="Telefone" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="telefone"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.logradouro}">
			<p>
				<b><g:message code="candidato.logradouro.label" default="Logradouro" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="logradouro"/>
				
			</p>
			</g:if>

			<g:if test="${candidatoInstance?.complemento}">
			<p>
				<b><g:message code="candidato.complemento.label" default="Complemento" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="complemento"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.numero}">
			<p>
				<b><g:message code="candidato.numero.label" default="Numero" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="numero"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.bairro}">
			<p>
				<b><g:message code="candidato.bairro.label" default="Bairro" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="bairro"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.cep}">
			<p>
				<b><g:message code="candidato.cep.label" default="Cep" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="cep"/>
				
			</p>
			</g:if>

			<g:if test="${candidatoInstance?.municipio}">
			<p>
				<b><g:message code="candidato.municipio.label" default="Municipio" />:</sb>
				
				<g:link controller="municipio" action="show" id="${candidatoInstance?.municipio?.id}">${candidatoInstance?.municipio?.encodeAsHTML()}</g:link>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.cpf}">
			<p>
				<b><g:message code="candidato.cpf.label" default="Cpf" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="cpf"/>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.nacionalidade}">
			<p>
				<b><g:message code="candidato.nacionalidade.label" default="Nacionalidade" />:</b>
				
				<g:fieldValue bean="${candidatoInstance}" field="nacionalidade"/>
				
			</p>
			</g:if>

			<g:if test="${candidatoInstance?.naturalidade}">
			<p>
				<b><g:message code="candidato.naturalidade.label" default="Naturalidade" />:</b>
				
				<g:link controller="municipio" action="show" id="${candidatoInstance?.naturalidade?.id}">${candidatoInstance?.naturalidade?.encodeAsHTML()}</g:link>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.dataNascimento}">
			<p>
				<b><g:message code="candidato.dataNascimento.label" default="Data Nascimento" />:</b>
				
				<g:formatDate date="${candidatoInstance?.dataNascimento}" format="dd/MM/yyyy"/>
				
			</p>
			</g:if>

			<g:if test="${candidatoInstance?.curriculo}">
			<p>
				<b><g:message code="candidato.curriculo.label" default="Curriculo" />:</b>
				
				<a href="${candidatoInstance?.curriculo}" target="_blank">Download</a>					
				
			</p>
			</g:if>

			<g:if test="${candidatoInstance?.certificados}">
			<p>
				<b><g:message code="candidato.certificados.label" default="Certificados" />:</b>
				
					<g:each in="${candidatoInstance.certificados}" var="c">
					<g:link controller="certificado" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link><br>
					</g:each>
				
			</p>
			</g:if>

			<g:if test="${candidatoInstance?.candidatosLingua}">
			<p>
				<b><g:message code="candidato.candidatosLingua.label" default="Candidatos Lingua" />:</b>
				
					<g:each in="${candidatoInstance.candidatosLingua}" var="c">
					<g:link controller="candidatoLingua" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link><br>
					</g:each>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.experienciasProfissionais}">
			<p>
				<b><g:message code="candidato.experienciasProfissionais.label" default="Experiencias Profissionais" />:</b>
				
					<g:each in="${candidatoInstance.experienciasProfissionais}" var="e">
					<g:link controller="experienciaProfissional" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link><br>
					</g:each>
				
			</p>
			</g:if>
		
			<g:if test="${candidatoInstance?.formacoesAcademicas}">
			<p>
				<b><g:message code="candidato.formacoesAcademicas.label" default="Formacoes Academicas" />:</b>
				
					<g:each in="${candidatoInstance.formacoesAcademicas}" var="f">
					<g:link controller="formacaoAcademica" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link><br>
					</g:each>
				
			</p>
			</g:if>
		
		</ol>
		<g:form url="[resource:candidatoInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${candidatoInstance}">Alterar</g:link>
			</div>
		</g:form>
	</body>
</html>
