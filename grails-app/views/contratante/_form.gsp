<%@ page import="selecadmais.Contratante" %>
	<h3 style="color:#ccc">Dados Básicos</h3>
	<hr>

  <div class="field" style="width: 100%">
    <input type="radio" id="rdTipoPessoaPF" name="rdTipoPessoa" value="PF" onclick="rdTipoPessoa_Click(this.value)"> Pessoa Física
    <input type="radio" id="rdTipoPessoaPJ" name="rdTipoPessoa" value="PJ" onclick="rdTipoPessoa_Click(this.value)"> Pessoa Jurídica
  </div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'cnpj', 'error')} " pj>
	<label for="cnpj">
		<g:message code="contratante.cnpj.label" default="CNPJ" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${contratanteInstance?.cnpj}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'inscricaoEstadual', 'error')} " pj>
	<label for="inscricaoEstadual">
		<g:message code="contratante.inscricaoEstadual.label" default="Inscricao Estadual" />
		
	</label>
	<g:textField name="inscricaoEstadual" maxlength="50" value="${contratanteInstance?.inscricaoEstadual}"/>

</div>


<div class="field ${hasErrors(bean: contratanteInstance, field: 'cpf', 'error')} " pf style="display:none">
	<label for="cpf">
		<g:message code="contratante.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" maxlength="14" value="${contratanteInstance?.cpf}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="contratante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${contratanteInstance?.nome}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="contratante.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" maxlength="150" required="" value="${contratanteInstance?.telefone}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contratante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="50" required="" value="${contratanteInstance?.email}"/>

</div>

<div class="field field ${hasErrors(bean: candidatoInstance, field: 'logo', 'error')} ">
	<label for="logo">
		Logo da Empresa
		
	</label>
	<input type="hidden" name="logo" id="logo"  value="333"/>
	<input type="file" name="fileLogo" id="fileLogo"  value="333"/>

	<g:if test="${contratanteInstance?.logo}">
		<img src="${contratanteInstance?.logo}" style="max-width:100px;max-height:100px">
	</g:if>
</div>

<br>
<br>
<h3 style="clear:both;color:#ccc">Endereço</h3>
<hr>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="contratante.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" maxlength="100" required="" value="${contratanteInstance?.logradouro}"/>

</div>


<div class="field ${hasErrors(bean: contratanteInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="contratante.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${contratanteInstance?.complemento}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="contratante.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" maxlength="20" value="${contratanteInstance?.numero}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="contratante.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" maxlength="100" required="" value="${contratanteInstance?.bairro}"/>

</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="contratante.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:textField name="cep" maxlength="9" required="" value="${contratanteInstance?.cep}"/>

</div>

<div class="field field ${hasErrors(bean: contratanteInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="contratante.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>

	<calendar:datePicker name="dataNascimento"  dateFormat= "%d/%m/%Y" defaultValue="${contratanteInstance?.dataNascimento}"/>
</div>

<div class="field field ${hasErrors(bean: contratanteInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="contratante.municipio.unidadeFederativa.label" default="Unidade Federativa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cmdUnidadeFederativa" name="cmdUnidadeFederativa" from="${selecadmais.UnidadeFederativa.list()}" optionKey="id" required="" value="${contratanteInstance?.municipio?.unidadeFederativa?.id}" class="many-to-one" noSelection="['':'']"
		onchange="${remoteFunction (
                        controller: 'candidato',
                        action: 'getMunicipios',
                        params: '\'uf=\' + this.value + \'&update=municipio&id=' + contratanteInstance?.municipio?.id + '\'',
                        update: 'municipio'
                )}"/>
</div>

<div class="field ${hasErrors(bean: contratanteInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="contratante.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="municipio" name="municipio.id" from="${[]}" optionKey="id" required="" value="${contratanteInstance?.municipio?.id}" class="many-to-one"/>

</div>

<script>
	<g:if test="${contratanteInstance?.cnpj}">
  		var tipoPessoa = "PJ";
  	</g:if>
	<g:if test="${contratanteInstance?.cpf}">
  		var tipoPessoa = "PF";
  	</g:if>
	<g:if test="${contratanteInstance?.cnpj == null && contratanteInstance?.cpf == null}">
  		var tipoPessoa = "PJ";
  	</g:if>
</script>
