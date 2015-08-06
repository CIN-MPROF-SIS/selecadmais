<script type="text/javascript">
    var childCountCertificados = ${candidatoInstance?.certificados?.size()} + 0;
 </script>

<fieldset>
	<legend>Certificados</legend>
	<ol>
		<div class="nested-fields">
			<table width="100%" id="childListCertificados">
				<tr>
					<td>Certificado</td>
				<td></td>
				</tr>

				<g:each var="certificado" in="${candidatoInstance.certificados}" status="i">
					<g:render template='certificado' model="['certificado':certificado,'i':i,'hidden':false]"/>
				</g:each>
			</table>
		</div>
	</ol>
	<input type="button" value="Adicionar Certificado" onclick="addCertificado();" />
</fieldset>