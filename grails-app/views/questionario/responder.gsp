<%@ page import="selecadmais.Questionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'questionario.label', default: 'Questionario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<script src="../../js/questionario.js" type="text/javascript" ></script>
	</head>
	<body>
		<h1>Responder Questionário</h1>
			
		<g:form url="[resource:questionarioInstance, action:'salvarRespostas']" method="POST" >
			<g:hiddenField name="version" value="${questionarioInstance?.version}" />
			<g:hiddenField name="idVaga" value="${questionarioInstance?.vaga.id}" />
			<g:hiddenField name="id" value="${questionarioInstance?.id}" />
			
			<g:each var="questao" in="${questionarioInstance.questoes}" status="iq">
				<li>
					<h2>${questao.descricao}</h2>
				    <ul>
				    <g:each var="opcao" in="${questao.opcoes}" status="io">
				      <li>
				      	<input type="radio" name="resposta[${questao.id}]" id="resposta_${questao.id}_${opcao.id}" value="${opcao.id}">${opcao.descricao}
				      	</li>
				    </g:each>
				    </ul>
				</li>
			</g:each>

			<div class="actions">
				<g:actionSubmit class="save" action="salvarRespostas" value="Salvar Respostas"/>
			</div>
			<g:link controller="questionario" action="vaga" id="${questionarioInstance.vaga.id}">Voltar</g:link>
		</g:form>
	</body>
</html>