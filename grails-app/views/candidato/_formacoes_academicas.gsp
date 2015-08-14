<script type="text/javascript">
    var childCountFormacoesAcademicas = ${candidatoInstance?.formacoesAcademicas?.size()} + 0;
 </script>

<fieldset>
	<legend>Formações Acadêmicas</legend>
	<ol>
		<div class="nested-fields">
			<table width="100%" id="childListFormacoesAcademicas">
				<tr>
					<td>Grau Formação</td>
					<td>Instituição</td>
					<td>Carga Horária</td>
					<td>Data Início</td>
					<td>Data Conclusão</td>
				</tr>

			    <g:each var="formacaoAcademica" in="${candidatoInstance.formacoesAcademicas}" status="i">
			        <g:render template='formacao_academica' model="['formacaoAcademica':formacaoAcademica,'i':i,'hidden':false]"/>
			    </g:each>
			</table>
		</div>
	</ol>
	<input type="button" value="Add Formação Acadêmica" onclick="addFormacaoAcademica();" />
</fieldset>