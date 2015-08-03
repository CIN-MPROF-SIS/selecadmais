<%@ page import="selecadmais.Candidato" %>



<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="candidato.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${candidatoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="candidato.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="50" required="" value="${candidatoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="candidato.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" maxlength="150" required="" value="${candidatoInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="candidato.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" maxlength="100" required="" value="${candidatoInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="candidato.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" maxlength="20" value="${candidatoInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="candidato.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" maxlength="100" required="" value="${candidatoInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="candidato.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" maxlength="9" required="" value="${candidatoInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="candidato.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" maxlength="14" required="" value="${candidatoInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nacionalidade', 'error')} required">
	<label for="nacionalidade">
		<g:message code="candidato.nacionalidade.label" default="Nacionalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidade" maxlength="50" required="" value="${candidatoInstance?.nacionalidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="candidato.foto.label" default="Foto" />
		
	</label>
	<g:textField name="foto" maxlength="200" value="${candidatoInstance?.foto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'curriculo', 'error')} ">
	<label for="curriculo">
		<g:message code="candidato.curriculo.label" default="Curriculo" />
		
	</label>
	<g:textField name="curriculo" maxlength="200" value="${candidatoInstance?.curriculo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'candidatosLingua', 'error')} ">
	<label for="candidatosLingua">
		<g:message code="candidato.candidatosLingua.label" default="Candidatos Lingua" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${candidatoInstance?.candidatosLingua?}" var="c">
    <li><g:link controller="candidatoLingua" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="candidatoLingua" action="create" params="['candidato.id': candidatoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'candidatoLingua.label', default: 'CandidatoLingua')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'certificados', 'error')} ">
	<label for="certificados">
		<g:message code="candidato.certificados.label" default="Certificados" />
		
	</label>
	
	<!-- Render the phones template (_certificados.gsp) here -->
	<g:render template="certificados" model="['candidatoInstance':candidatoInstance]" />
	<!-- Render the phones template (_certificados.gsp) here -->

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="candidato.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${candidatoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="candidato.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${candidatoInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'experienciasProfissionais', 'error')} ">
	<label for="experienciasProfissionais">
		<g:message code="candidato.experienciasProfissionais.label" default="Experiencias Profissionais" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${candidatoInstance?.experienciasProfissionais?}" var="e">
    <li><g:link controller="experienciaProfissional" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="experienciaProfissional" action="create" params="['candidato.id': candidatoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'experienciaProfissional.label', default: 'ExperienciaProfissional')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'formacoesAcademicas', 'error')} ">
	<label for="formacoesAcademicas">
		<g:message code="candidato.formacoesAcademicas.label" default="Formacoes Academicas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${candidatoInstance?.formacoesAcademicas?}" var="f">
    <li><g:link controller="formacaoAcademica" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="formacaoAcademica" action="create" params="['candidato.id': candidatoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'formacaoAcademica.label', default: 'FormacaoAcademica')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="candidato.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${selecadmais.Municipio.list()}" optionKey="id" required="" value="${candidatoInstance?.municipio?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'naturalidade', 'error')} required">
	<label for="naturalidade">
		<g:message code="candidato.naturalidade.label" default="Naturalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="naturalidade" name="naturalidade.id" from="${selecadmais.Municipio.list()}" optionKey="id" required="" value="${candidatoInstance?.naturalidade?.id}" class="many-to-one"/>

</div>

