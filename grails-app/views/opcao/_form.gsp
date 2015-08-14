<%@ page import="selecadmais.Opcao" %>



<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="opcao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="100" required="" value="${opcaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'gabarito', 'error')} ">
	<label for="gabarito">
		<g:message code="opcao.gabarito.label" default="Gabarito" />
		
	</label>
	<g:checkBox name="gabarito" value="${opcaoInstance?.gabarito}" />

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'questao', 'error')} required">
	<label for="questao">
		<g:message code="opcao.questao.label" default="Questao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="questao" name="questao.id" from="${selecadmais.Questao.list()}" optionKey="id" required="" value="${opcaoInstance?.questao?.id}" class="many-to-one"/>

</div>

