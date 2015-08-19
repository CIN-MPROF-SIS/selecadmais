<%@ page import="selecadmais.Usuario" %>



<div class="field ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Usuário" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioInstance?.username}"/>

</div>

<div class="field ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="field ${hasErrors(bean: usuarioInstance, field: 'papel', 'error')} ">
	<label for="pessoa">
		<g:message code="usuario.papel.label" default="Papel" />
		
	</label>
	<!-- <g:select id="papel" name="papel" from="${selecadmais.Papel.list()}" optionKey="authority" value="${usuarioInstance?.papel}" class="many-to-one" noSelection="['null': '']"/>-->
 <select id="papel" class="many-to-one" name="papel">
    <option value="null"></option>
    <option value="PAPEL_CANDIDATO"> Candidato</option>
    <option value="PAPEL_CONTRATANTE">Contratante</option>
 </select>

</div>

<div class="field ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Conta Expirada" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />

</div>

<div class="field ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Conta Bloqueada" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" disabled="true" />

</div>

<div class="field ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Ativo"/>
		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}"  />

</div>

<div class="field ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Senha expirada" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />

</div>

<g:if test="${usuarioInstance?.papel}">
<script>
	$("#papel").val("${usuarioInstance?.papel}");
</script>
</g:if>