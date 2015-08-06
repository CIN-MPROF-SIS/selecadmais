<script type="text/javascript">
    var childCount = ${candidatoInstance?.formacoesAcademicas?.size()} + 0;
 </script>
<ul id="childListFormacoesAcademicas" class="one-to-many">
    <g:each var="formacaoAcademica" in="${candidatoInstance.formacoesAcademicas}" status="i">
        <g:render template='experiencia_profissional' model="['formacaoAcademica':formacaoAcademica,'i':i,'hidden':false]"/>
    </g:each>
</ul>
<div>
  <label for="formacoesAcademicas">
    &nbsp;
    
  </label>
    <input type="button" value="Add Formação Acadêmica" onclick="addFormacaoAcademica();" />
</div>