<%@ page import="selecadmais.CandidatoVaga" %>



<div class="fieldcontain ${hasErrors(bean: candidatoVagaInstance, field: 'selecionado', 'error')} ">
	<label for="selecionado">
		<g:message code="candidatoVaga.selecionado.label" default="Selecionado" />
		
	</label>
	<g:checkBox name="selecionado" value="${candidatoVagaInstance?.selecionado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoVagaInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="candidatoVaga.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${selecadmais.Candidato.list()}" optionKey="id" required="" value="${candidatoVagaInstance?.candidato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoVagaInstance, field: 'vaga', 'error')} required">
	<label for="vaga">
		<g:message code="candidatoVaga.vaga.label" default="Vaga" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="vaga" name="vaga.id" from="${selecadmais.Vaga.list()}" optionKey="id" required="" value="${candidatoVagaInstance?.vaga?.id}" class="many-to-one"/>

</div>

