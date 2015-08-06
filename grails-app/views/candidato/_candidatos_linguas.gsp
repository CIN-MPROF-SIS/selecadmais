<script type="text/javascript">
    var childCountLinguas = ${candidatoInstance?.candidatosLingua?.size()} + 0;
 </script>

<fieldset>
	<legend>Línguas</legend>
	<ol>
		<div class="nested-fields">
			<table width="100%"  id="childListLinguas">
				<tr>
					<td>Língua</td>
					<td>Nível</td>
					<td></td>
				</tr>

			    <g:each var="candidatoLingua" in="${candidatoInstance.candidatosLingua}" status="i">
			        <g:render template='candidato_lingua' model="['candidatoLingua':candidatoLingua,'i':i,'hidden':false]"/>
			    </g:each>
			</table>
		</div>
	</ol>
	<input type="button" value="Adicionar Língua" onclick="addLingua();" />
</fieldset>