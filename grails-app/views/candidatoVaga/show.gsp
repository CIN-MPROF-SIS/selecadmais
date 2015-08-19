
<%@ page import="selecadmais.CandidatoVaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidatoVaga.label', default: 'CandidatoVaga')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<h1>Vaga</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.descricao}">
			<p>
				<b>
					<g:message code="vaga.descricao.label" default="Descrição" />:
				</b>
				<g:fieldValue bean="${candidatoVagaInstance.vaga}" field="descricao"/>
			</p>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.cargo}">
			<p>
				<b>
					<g:message code="vaga.cargo.label" default="Cargo" />:
				</b>
				<g:fieldValue bean="${candidatoVagaInstance.vaga}" field="cargo"/>
			</p>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.contratante}">
			<p>
				<b>
					<g:message code="vaga.contratante.label" default="Contratante" />:
				</b>
				<g:link controller="contratante" action="show" id="${candidatoVagaInstance.vaga?.contratante?.id}">${candidatoVagaInstance.vaga?.contratante?.encodeAsHTML()}</g:link>
			</p>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.dataInicioInscricao}">
			<p>
				<b>
					<g:message code="vaga.dataInicioInscricao.label" default="Data Início Inscrição" />:
				</b>
				<g:formatDate date="${candidatoVagaInstance.vaga?.dataInicioInscricao}" format="dd/MM/yyyy" /></span>
			</p>
		</g:if>


		<g:if test="${candidatoVagaInstance.vaga?.dataTerminoInscricao}">
			<p>
				<b>
					<g:message code="vaga.dataTerminoInscricao.label" default="Data Término Inscrição" />:
				</b>
				<g:formatDate date="${candidatoVagaInstance.vaga?.dataTerminoInscricao}" format="dd/MM/yyyy"/>
			</p>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.faixaSalarial}">
			<p>
				<b>
					<g:message code="vaga.faixaSalarial.label" default="Faixa Salarial" />:
				</b>
				<g:link controller="faixaSalarial" action="show" id="${candidatoVagaInstance.vaga?.faixaSalarial?.id}">${candidatoVagaInstance.vaga?.faixaSalarial?.encodeAsHTML()}</g:link>
			</p>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.municipio}">
			<p>
				<b>
					<g:message code="vaga.municipio.label" default="Município" />:
				</b>
				<g:link controller="municipio" action="show" id="${candidatoVagaInstance.vaga?.municipio?.id}">${candidatoVagaInstance.vaga?.municipio?.encodeAsHTML()}</g:link>
			</p>
		</g:if>

		<g:if test="${candidatoVagaInstance.vaga?.quantidade}">
			<p>
				<b>
					<g:message code="vaga.quantidade.label" default="Quantidade" />:
				</b>
				<g:fieldValue bean="${candidatoVagaInstance.vaga}" field="quantidade"/>
			</p>
		</g:if>

		<g:link class="list" action="index">Voltar</g:link>
	</body>
</html>
