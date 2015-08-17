
<%@ page import="selecadmais.UnidadeFederativa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unidadeFederativa.label', default: 'UnidadeFederativa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Unidade Federativa</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<p>
			<strong>
				<g:message code="unidadeFederativa.sigla.label" default="Sigla" />:
			</strong>
			<g:fieldValue bean="${unidadeFederativaInstance}" field="sigla"/>
		</p>
		<p>
			<strong>
				<g:message code="unidadeFederativa.nome.label" default="Nome" />:
			</strong>
			<g:fieldValue bean="${unidadeFederativaInstance}" field="nome"/>
		</p>
		
		<g:form url="[resource:unidadeFederativaInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${unidadeFederativaInstance}">Alterar</g:link>|
				<g:link class="list" action="index">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
