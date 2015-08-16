<%@ page import="selecadmais.Nivel" %>



<div class="field ${hasErrors(bean: nivelInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="nivel.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="50" required="" value="${nivelInstance?.descricao}"/>

</div>

