<%@ page import="selecadmais.Lingua" %>



<div class="field ${hasErrors(bean: linguaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="lingua.descricao.label" default="Descrição" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="50" required="" value="${linguaInstance?.descricao}"/>

</div>

