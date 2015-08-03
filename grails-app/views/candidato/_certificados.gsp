<script type="text/javascript">
    var childCount = ${candidatoInstance?.certificados?.size()} + 0;
 </script>
<ul id="childList" class="one-to-many">
    <g:each var="certificado" in="${candidatoInstance.certificados}" status="i">
        <!-- Render the certificado template (_certificado.gsp) here -->
        <g:render template='certificado' model="['certificado':certificado,'i':i,'hidden':false]"/>
        <!-- Render the certificado template (_certificado.gsp) here -->
    </g:each>
</ul>
<div>
  <label for="formacoesAcademicas">
    &nbsp;
    
  </label>
    <input type="button" value="Add certificado" onclick="addcertificado();" />
</div>