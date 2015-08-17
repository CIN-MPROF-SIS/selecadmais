<%@ page import="selecadmais.Vaga" %>

<div class="field ${hasErrors(bean: vagaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="vaga.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${vagaInstance?.descricao}"/>

</div>

<div class="field ${hasErrors(bean: vagaInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="vaga.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" maxlength="100" required="" value="${vagaInstance?.cargo}"/>

</div>

<div class="field ${hasErrors(bean: vagaInstance, field: 'dataInicioInscricao', 'error')} required">
	<label for="dataInicioInscricao">
		<g:message code="vaga.dataInicioInscricao.label" default="Data Inicio Inscricao" />
		<span class="required-indicator">*</span>
	</label>
	<calendar:datePicker name="dataInicioInscricao"  dateFormat= "%d/%m/%Y" defaultValue="${vagaInstance?.dataInicioInscricao}"/>

</div>

<div class="field ${hasErrors(bean: vagaInstance, field: 'dataTerminoInscricao', 'error')} required">
	<label for="dataTerminoInscricao">
		<g:message code="vaga.dataTerminoInscricao.label" default="Data Termino Inscricao" />
		<span class="required-indicator">*</span>
	</label>
	<calendar:datePicker name="dataTerminoInscricao"  dateFormat= "%d/%m/%Y" defaultValue="${vagaInstance?.dataTerminoInscricao}"/>

</div>

<div class="field ${hasErrors(bean: vagaInstance, field: 'faixaSalarial', 'error')} required">
	<label for="faixaSalarial">
		<g:message code="vaga.faixaSalarial.label" default="Faixa Salarial" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="faixaSalarial" name="faixaSalarial.id" from="${selecadmais.FaixaSalarial.list()}" optionKey="id" required="" value="${vagaInstance?.faixaSalarial?.id}" class="many-to-one" noSelection="['':'']"/>

</div>

<div class="field ${hasErrors(bean: vagaInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="vaga.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="quantidade" value="${fieldValue(bean: vagaInstance, field: 'quantidade')}" required=""/>

</div>

<div class="field  ${hasErrors(bean: candidatoInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="candidato.municipio.unidadeFederativa.label" default="Unidade Federativa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cmdUnidadeFederativa" name="cmdUnidadeFederativa" from="${selecadmais.UnidadeFederativa.list()}" optionKey="id" required="" value="${candidatoInstance?.municipio?.unidadeFederativa?.id}" class="many-to-one" noSelection="['':'']"
		onchange="${remoteFunction (
                        controller: 'candidato',
                        action: 'getMunicipios',
                        params: '\'uf=\' + this.value + \'&update=municipio&id=' + candidatoInstance?.municipio?.id + '\'',
                        update: 'municipio'
                )}"/>
</div>

<div class="field ${hasErrors(bean: vagaInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="vaga.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${[]}" optionKey="id" required="" value="${vagaInstance?.municipio?.id}" class="many-to-one" noSelection="['':'']"/>

</div>

