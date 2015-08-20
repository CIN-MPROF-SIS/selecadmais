
<%@ page import="selecadmais.Contratante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contratante.label', default: 'Contratante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Meu Perfil</h1>
		<g:if test="${flash.message}">
		<div class="flash_notice" role="status">${flash.message}</div>
		</g:if>

		<g:if test="${contratanteInstance?.logo}">
			<p>
				<img src="${contratanteInstance?.logo}" style="max-width:100px;max-height:100px">
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.cpf}">
			<p>
				<b>
					<g:message code="contratante.cpf.label" default="Cpf" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="cpf"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.cnpj}">
			<p>
				<b>
					<g:message code="contratante.cnpj.label" default="CNPJ" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="cnpj"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.inscricaoEstadual}">
			<p>
				<b>
					<g:message code="contratante.inscricaoEstadual.label" default="Inscricao Estadual" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="inscricaoEstadual"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.nome}">
			<p>
				<b>
					<g:message code="contratante.nome.label" default="Nome" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="nome"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.email}">
			<p>
				<b>
					<g:message code="contratante.email.label" default="Email" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="email"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.telefone}">
			<p>
				<b>
					<g:message code="contratante.telefone.label" default="Telefone" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="telefone"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.logradouro}">
			<p>
				<b>
					<g:message code="contratante.logradouro.label" default="Logradouro" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="logradouro"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.numero}">
			<p>
				<b>
					<g:message code="contratante.numero.label" default="Numero" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="numero"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.bairro}">
			<p>
				<b>
					<g:message code="contratante.bairro.label" default="Bairro" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="bairro"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.cep}">
			<p>
				<b>
					<g:message code="contratante.cep.label" default="Cep" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="cep"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.complemento}">
			<p>
				<b>
					<g:message code="contratante.complemento.label" default="Complemento" />:
				</b>
				<g:fieldValue bean="${contratanteInstance}" field="complemento"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.dataNascimento}">
			<p>
				<b>
					<g:message code="contratante.dataNascimento.label" default="Data Nascimento" />:
				</b>
				<g:formatDate date="${contratanteInstance?.dataNascimento}" format="dd/MM/yyyy"/>
			</p>
		</g:if>

		<g:if test="${contratanteInstance?.municipio}">
			<p>
				<b>
					<g:message code="contratante.municipio.label" default="Municipio" />:
				</b>
				<g:link controller="municipio" action="show" id="${contratanteInstance?.municipio?.id}">${contratanteInstance?.municipio?.encodeAsHTML()}</g:link>
			</p>
		</g:if>


		<g:form url="[resource:contratanteInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${contratanteInstance}">Alterar</g:link>
			</div>
		</g:form>
	</body>
</html>
