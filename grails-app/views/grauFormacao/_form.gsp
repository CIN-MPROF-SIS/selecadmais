<%@ page import="selecadmais.GrauFormacao" %>



<div class="fieldcontain ${hasErrors(bean: grauFormacaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="grauFormacao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="50" required="" value="${grauFormacaoInstance?.descricao}"/>

</div>

