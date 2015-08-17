<%@ page import="selecadmais.UnidadeFederativa" %>



<div class="field ${hasErrors(bean: unidadeFederativaInstance, field: 'sigla', 'error')} required">
	<label for="sigla">
		<g:message code="unidadeFederativa.sigla.label" default="Sigla" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sigla" required="" value="${unidadeFederativaInstance?.sigla}"/>

</div>

<div class="field ${hasErrors(bean: unidadeFederativaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="unidadeFederativa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${unidadeFederativaInstance?.nome}"/>

</div>

