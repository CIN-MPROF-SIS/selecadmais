<%@ page import="selecadmais.Questionario" %>



<div class="fieldcontain ${hasErrors(bean: questionarioInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="questionario.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="100" required="" value="${questionarioInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionarioInstance, field: 'questoes', 'error')} ">
	<label for="questoes">
		<g:message code="questionario.questoes.label" default="Questoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questionarioInstance?.questoes?}" var="q">
    <li><g:link controller="questao" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="questao" action="create" params="['questionario.id': questionarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'questao.label', default: 'Questao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: questionarioInstance, field: 'vaga', 'error')} required">
	<label for="vaga">
		<g:message code="questionario.vaga.label" default="Vaga" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="vaga" name="vaga.id" from="${selecadmais.Vaga.list()}" optionKey="id" required="" value="${questionarioInstance?.vaga?.id}" class="many-to-one"/>

</div>

