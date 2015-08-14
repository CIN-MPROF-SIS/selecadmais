<%@ page import="selecadmais.Lingua" %>



<div class="fieldcontain ${hasErrors(bean: linguaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="lingua.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="50" required="" value="${linguaInstance?.descricao}"/>

</div>

