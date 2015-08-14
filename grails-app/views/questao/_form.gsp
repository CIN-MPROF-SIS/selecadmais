<%@ page import="selecadmais.Questao" %>



<div class="fieldcontain ${hasErrors(bean: questaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="questao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="100" required="" value="${questaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questaoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="questao.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nota" value="${fieldValue(bean: questaoInstance, field: 'nota')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: questaoInstance, field: 'questionario', 'error')} required">
	<label for="questionario">
		<g:message code="questao.questionario.label" default="Questionario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="questionario" name="questionario.id" from="${selecadmais.Questionario.list()}" optionKey="id" required="" value="${questaoInstance?.questionario?.id}" class="many-to-one"/>

</div>

