<%@ page import="selecadmais.FormacaoAcademica" %>



<div class="fieldcontain ${hasErrors(bean: formacaoAcademicaInstance, field: 'instituicao', 'error')} required">
	<label for="instituicao">
		<g:message code="formacaoAcademica.instituicao.label" default="Instituicao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instituicao" maxlength="100" required="" value="${formacaoAcademicaInstance?.instituicao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formacaoAcademicaInstance, field: 'dataConclusao', 'error')} ">
	<label for="dataConclusao">
		<g:message code="formacaoAcademica.dataConclusao.label" default="Data Conclusao" />
		
	</label>
	<g:datePicker name="dataConclusao" precision="day"  value="${formacaoAcademicaInstance?.dataConclusao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: formacaoAcademicaInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="formacaoAcademica.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${selecadmais.Candidato.list()}" optionKey="id" required="" value="${formacaoAcademicaInstance?.candidato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: formacaoAcademicaInstance, field: 'cargaHoraria', 'error')} required">
	<label for="cargaHoraria">
		<g:message code="formacaoAcademica.cargaHoraria.label" default="Carga Horaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cargaHoraria" value="${fieldValue(bean: formacaoAcademicaInstance, field: 'cargaHoraria')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: formacaoAcademicaInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="formacaoAcademica.dataInicio.label" default="Data Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${formacaoAcademicaInstance?.dataInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: formacaoAcademicaInstance, field: 'grauFormacao', 'error')} required">
	<label for="grauFormacao">
		<g:message code="formacaoAcademica.grauFormacao.label" default="Grau Formacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grauFormacao" name="grauFormacao.id" from="${selecadmais.GrauFormacao.list()}" optionKey="id" required="" value="${formacaoAcademicaInstance?.grauFormacao?.id}" class="many-to-one"/>

</div>

