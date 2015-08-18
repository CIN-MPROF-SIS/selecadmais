
<%@ page import="selecadmais.Questionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionario.label', default: 'Questionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1>Questionário</h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>

		
			<g:if test="${questionarioInstance?.descricao}">
			<p>
				<b><g:message code="questionario.descricao.label" default="Descricao" />:</b>

				
				<g:fieldValue bean="${questionarioInstance}" field="descricao"/>
				
			</p>
			</g:if>
		
			<g:if test="${questionarioInstance?.questoes}">
			<p>
				<b><g:message code="questionario.questoes.label" default="Questoes" />:</b>
				<fieldset>
					<g:each in="${questionarioInstance.questoes}" var="q">
						<fieldset>
							<p>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link controller="questao" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link>
							</p>
							<g:each in="${q.opcoes}" var="o">
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:link controller="opcao" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link>
								</p>
							</g:each>
						</fieldset>
					</g:each>
				</fieldset>
				
			</p>
			</g:if>
		

		<g:form url="[resource:questionarioInstance, action:'delete']" method="DELETE">
			<div class="actions">
				<g:link class="edit" action="edit" resource="${questionarioInstance}">Alterar</g:link>|
				<g:link controller="questionario" action="vaga" id="${questionarioInstance.vaga.id}">Voltar</g:link>
				<g:actionSubmit class="delete" action="delete" value="Excluir" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</div>
		</g:form>
	</body>
</html>
