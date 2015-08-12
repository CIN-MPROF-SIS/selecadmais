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
		<a href="#edit-questionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-questionario" class="content scaffold-edit" role="main">
			<h1>${questionarioInstance.descricao}</h1>
			
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

				<fieldset class="buttons">
					<g:actionSubmit class="save" action="salvarRespostas" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>