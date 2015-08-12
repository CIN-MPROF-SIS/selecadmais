<%@ page import="selecadmais.Candidato" %>



<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="candidato.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${candidatoInstance?.nome}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="candidato.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="50" required="" value="${candidatoInstance?.email}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="candidato.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" maxlength="150" required="" value="${candidatoInstance?.telefone}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="candidato.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" maxlength="100" required="" value="${candidatoInstance?.logradouro}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="candidato.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${candidatoInstance?.complemento}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="candidato.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" maxlength="20" value="${candidatoInstance?.numero}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="candidato.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" maxlength="100" required="" value="${candidatoInstance?.bairro}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="candidato.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" maxlength="9" required="" value="${candidatoInstance?.cep}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'municipio', 'error')} required">
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

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="candidato.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${[]}" optionKey="id" required="" value="${candidatoInstance?.municipio?.id}" class="many-to-one" noSelection="['':'']"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="candidato.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" maxlength="14" required="" value="${candidatoInstance?.cpf}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nacionalidade', 'error')} required">
	<label for="nacionalidade">
		<g:message code="candidato.nacionalidade.label" default="Nacionalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidade" maxlength="50" required="" value="${candidatoInstance?.nacionalidade}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'naturalidade', 'error')} required">
	<label for="municipio">
		<g:message code="candidato.municipio.label" default="Unidade Federativa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cmdUnidadeFederativaNaturalidade" name="cmdUnidadeFederativaNaturalidade" from="${selecadmais.UnidadeFederativa.list()}" optionKey="id" required="" value="${candidatoInstance?.naturalidade?.unidadeFederativa?.id}" class="many-to-one" noSelection="['':'']"
	onchange="${remoteFunction (
                    controller: 'candidato',
                    action: 'getMunicipios',
                    params: '\'uf=\' + this.value + \'&update=naturalidade&id=' + candidatoInstance?.naturalidade?.id + '\'',
                    update: 'naturalidade'
            )}"/>
</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'naturalidade', 'error')} required">
	<label for="naturalidade">
		<g:message code="candidato.naturalidade.label" default="Naturalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="naturalidade" name="naturalidade.id" from="${[]}" optionKey="id" required="" value="${candidatoInstance?.naturalidade?.id}" class="many-to-one" noSelection="['':'']"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="candidato.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>

    <calendar:datePicker name="dataNascimento"  dateFormat= "%d/%m/%Y" defaultValue="${candidatoInstance?.dataNascimento}"/>

</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="candidato.foto.label" default="Foto" />
		
	</label>
	<input type="file" name="fileFoto" id="fileFoto" />

	<g:if test="${candidatoInstance?.foto}">
		<img src="${candidatoInstance?.foto}" style="max-width:100px;max-height:100px">
	</g:if>
</div>

<div class="field fieldcontain ${hasErrors(bean: candidatoInstance, field: 'curriculo', 'error')} ">
	<label for="curriculo">
		<g:message code="candidato.curriculo.label" default="Curriculo" />
		
	</label>
	<input type="file" name="fileCurriculo" id="fileCurriculo" />
	<g:if test="${candidatoInstance?.curriculo}">
		<a href="${candidatoInstance?.curriculo}" target="_blank">Download</a>
	</g:if>
</div>

<g:render template="certificados" model="['candidatoInstance':candidatoInstance]" />

<g:render template="candidatos_linguas" model="['candidatoInstance':candidatoInstance]" />

<g:render template="experiencias_profissionais" model="['candidatoInstance':candidatoInstance]" />

<g:render template="formacoes_academicas" model="['candidatoInstance':candidatoInstance]" />