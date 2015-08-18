<%@ page import="selecadmais.Questionario" %>



<div style="width:100%" class="field ${hasErrors(bean: questionarioInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="questionario.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="100" required="" value="${questionarioInstance?.descricao}"/>

</div>

<g:render template="questoes" model="['questionarioInstance':questionarioInstance]" />
