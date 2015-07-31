<%@ page import="selecadmais.Contratante" %>



<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="contratante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${contratanteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contratante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="50" required="" value="${contratanteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="contratante.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" maxlength="150" required="" value="${contratanteInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="contratante.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" maxlength="100" required="" value="${contratanteInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="contratante.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" maxlength="20" value="${contratanteInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="contratante.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" maxlength="100" required="" value="${contratanteInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="contratante.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" maxlength="9" required="" value="${contratanteInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="contratante.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" maxlength="14" value="${contratanteInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'nacionalidade', 'error')} ">
	<label for="nacionalidade">
		<g:message code="contratante.nacionalidade.label" default="Nacionalidade" />
		
	</label>
	<g:textField name="nacionalidade" maxlength="50" value="${contratanteInstance?.nacionalidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'naturalidade', 'error')} ">
	<label for="naturalidade">
		<g:message code="contratante.naturalidade.label" default="Naturalidade" />
		
	</label>
	<g:select id="naturalidade" name="naturalidade.id" from="${selecadmais.Municipio.list()}" optionKey="id" value="${contratanteInstance?.naturalidade?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'inscricaoEstadual', 'error')} ">
	<label for="inscricaoEstadual">
		<g:message code="contratante.inscricaoEstadual.label" default="Inscricao Estadual" />
		
	</label>
	<g:textField name="inscricaoEstadual" maxlength="50" value="${contratanteInstance?.inscricaoEstadual}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="contratante.logo.label" default="Logo" />
		
	</label>
	<g:textField name="logo" maxlength="200" value="${contratanteInstance?.logo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="contratante.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${contratanteInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'cpnj', 'error')} required">
	<label for="cpnj">
		<g:message code="contratante.cpnj.label" default="Cpnj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpnj" required="" value="${contratanteInstance?.cpnj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="contratante.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${contratanteInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: contratanteInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="contratante.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${selecadmais.Municipio.list()}" optionKey="id" required="" value="${contratanteInstance?.municipio?.id}" class="many-to-one"/>

</div>

