<%@ page import="selecadmais.ExperienciaProfissional" %>



<div class="fieldcontain ${hasErrors(bean: experienciaProfissionalInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="experienciaProfissional.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empresa" maxlength="100" required="" value="${experienciaProfissionalInstance?.empresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: experienciaProfissionalInstance, field: 'areaAtuacao', 'error')} required">
	<label for="areaAtuacao">
		<g:message code="experienciaProfissional.areaAtuacao.label" default="Area Atuacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="areaAtuacao" maxlength="100" required="" value="${experienciaProfissionalInstance?.areaAtuacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: experienciaProfissionalInstance, field: 'dataConclusao', 'error')} ">
	<label for="dataConclusao">
		<g:message code="experienciaProfissional.dataConclusao.label" default="Data Conclusao" />
		
	</label>
	<g:datePicker name="dataConclusao" precision="day"  value="${experienciaProfissionalInstance?.dataConclusao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: experienciaProfissionalInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="experienciaProfissional.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${selecadmais.Candidato.list()}" optionKey="id" required="" value="${experienciaProfissionalInstance?.candidato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: experienciaProfissionalInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="experienciaProfissional.dataInicio.label" default="Data Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${experienciaProfissionalInstance?.dataInicio}"  />

</div>

