<%@ page import="selecadmais.Municipio" %>



<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="municipio.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${municipioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: municipioInstance, field: 'unidadeFederativa', 'error')} required">
	<label for="unidadeFederativa">
		<g:message code="municipio.unidadeFederativa.label" default="Unidade Federativa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unidadeFederativa" name="unidadeFederativa.id" from="${selecadmais.UnidadeFederativa.list()}" optionKey="id" required="" value="${municipioInstance?.unidadeFederativa?.id}" class="many-to-one"/>

</div>

