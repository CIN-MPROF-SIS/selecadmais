
<%@ page import="selecadmais.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Vaga</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>

		<g:if test="${vagaInstance?.descricao}">
			<p>
				<b>
					<g:message code="vaga.descricao.label" default="Descrição" />:
				</b>
				<g:fieldValue bean="${vagaInstance}" field="descricao"/>
			</p>
		</g:if>

		<g:if test="${vagaInstance?.cargo}">
			<p>
				<b>
					<g:message code="vaga.cargo.label" default="Cargo" />:
				</b>
				<g:fieldValue bean="${vagaInstance}" field="cargo"/>
			</p>
		</g:if>

		<g:if test="${vagaInstance?.contratante}">
			<p>
				<b>
					<g:message code="vaga.contratante.label" default="Contratante" />:
				</b>
				<g:link controller="contratante" action="show" id="${vagaInstance?.contratante?.id}">${vagaInstance?.contratante?.encodeAsHTML()}</g:link>
			</p>
		</g:if>

		<g:if test="${vagaInstance?.dataInicioInscricao}">
			<p>
				<b>
					<g:message code="vaga.dataInicioInscricao.label" default="Data Início Inscrição" />:
				</b>
				<g:formatDate date="${vagaInstance?.dataInicioInscricao}" format="dd/MM/yyyy" /></span>
			</p>
		</g:if>


		<g:if test="${vagaInstance?.dataTerminoInscricao}">
			<p>
				<b>
					<g:message code="vaga.dataTerminoInscricao.label" default="Data Término Inscrição" />:
				</b>
				<g:formatDate date="${vagaInstance?.dataTerminoInscricao}" format="dd/MM/yyyy"/>
			</p>
		</g:if>

		<g:if test="${vagaInstance?.faixaSalarial}">
			<p>
				<b>
					<g:message code="vaga.faixaSalarial.label" default="Faixa Salarial" />:
				</b>
				<g:link controller="faixaSalarial" action="show" id="${vagaInstance?.faixaSalarial?.id}">${vagaInstance?.faixaSalarial?.encodeAsHTML()}</g:link>
			</p>
		</g:if>

		<g:if test="${vagaInstance?.municipio}">
			<p>
				<b>
					<g:message code="vaga.municipio.label" default="Município" />:
				</b>
				<g:link controller="municipio" action="show" id="${vagaInstance?.municipio?.id}">${vagaInstance?.municipio?.encodeAsHTML()}</g:link>
			</p>
		</g:if>

		<g:if test="${vagaInstance?.quantidade}">
			<p>
				<b>
					<g:message code="vaga.quantidade.label" default="Quantidade" />:
				</b>
				<g:fieldValue bean="${vagaInstance}" field="quantidade"/>
			</p>
		</g:if>

		<sec:ifLoggedIn>
			<sec:access expression="hasRole('PAPEL_CONTRATANTE')">
				<g:form url="[resource:vagaInstance, action:'delete']" method="DELETE">
					<div class="actions">
						<g:link class="edit" action="edit" resource="${vagaInstance}">Alterar</g:link>|
						<g:link class="list" action="index">Voltar</g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</g:form>
			</sec:access>

			<sec:access expression="hasRole('PAPEL_CANDIDATO')">
				<div class="actions">
					<g:link controller="candidatoVaga" class="list" action="index">Voltar</g:link>
				</div>
			</sec:access>
		</sec:ifLoggedIn>


	</body>
</html>
