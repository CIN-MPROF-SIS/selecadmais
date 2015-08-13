<script type="text/javascript">
    var childCountExperienciasProfissionais = ${candidatoInstance?.experienciasProfissionais?.size()} + 0;
 </script>

<fieldset>
	<legend>Experiências Profissionais</legend>
	<ol>
		<div class="nested-fields">
			<table width="100%" id="childListExperienciasProfissionais">
				<tr>
					<td>Empresa</td>
					<td>Área de Atuação</td>
					<td>Data Início</td>
					<td>Data Conclusão</td>
					<td></td>
				</tr>

			    <g:each var="experienciaProfissional" in="${candidatoInstance.experienciasProfissionais}" status="i">
			        <g:render template='experiencia_profissional' model="['experienciaProfissional':experienciaProfissional,'i':i,'hidden':false]"/>
			    </g:each>
			</table>
		</div>
	</ol>
	<input type="button" value="Adicionar Experiência Profissional" onclick="addExperienciaProfissional();" />
</fieldset>
