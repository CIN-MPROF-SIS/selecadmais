<script type="text/javascript">
    var childCount = ${candidatoInstance?.certificados?.size()} + 0;
 </script>
<ul id="childListCertificados" class="one-to-many">
    <g:each var="certificado" in="${candidatoInstance.certificados}" status="i">
        <g:render template='certificado' model="['certificado':certificado,'i':i,'hidden':false]"/>
    </g:each>
</ul>
<div>
  <label for="formacoesAcademicas">
    &nbsp;
    
  </label>
    <input type="button" value="Add certificado" onclick="addCertificado();" />
</div>