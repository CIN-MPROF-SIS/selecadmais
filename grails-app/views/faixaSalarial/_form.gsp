<%@ page import="selecadmais.FaixaSalarial" %>



<div class="field ${hasErrors(bean: faixaSalarialInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="faixaSalarial.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="valor" maxlength="20" required="" value="${faixaSalarialInstance?.valor}"/>

</div>

