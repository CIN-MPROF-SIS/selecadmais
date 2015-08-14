<%@ page import="selecadmais.Certificado" %>



<div class="fieldcontain ${hasErrors(bean: certificadoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="certificado.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="100" required="" value="${certificadoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: certificadoInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="certificado.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${selecadmais.Candidato.list()}" optionKey="id" required="" value="${certificadoInstance?.candidato?.id}" class="many-to-one"/>

</div>

