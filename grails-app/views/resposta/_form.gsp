<%@ page import="selecadmais.Resposta" %>



<div class="fieldcontain ${hasErrors(bean: respostaInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="resposta.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${selecadmais.Candidato.list()}" optionKey="id" required="" value="${respostaInstance?.candidato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: respostaInstance, field: 'opcao', 'error')} required">
	<label for="opcao">
		<g:message code="resposta.opcao.label" default="Opcao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opcao" name="opcao.id" from="${selecadmais.Opcao.list()}" optionKey="id" required="" value="${respostaInstance?.opcao?.id}" class="many-to-one"/>

</div>

