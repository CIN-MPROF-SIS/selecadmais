<script type="text/javascript">
    var childCount = ${candidatoInstance?.experienciasProfissionais?.size()} + 0;
 </script>
<ul id="childListExperienciasProfissionais" class="one-to-many">
    <g:each var="experienciaProfissional" in="${candidatoInstance.experienciasProfissionais}" status="i">
        <g:render template='experiencia_profissional' model="['experienciaProfissional':experienciaProfissional,'i':i,'hidden':false]"/>
    </g:each>
</ul>
<div>
  <label for="formacoesAcademicas">
    &nbsp;
    
  </label>
    <input type="button" value="Add experienciaProfissional" onclick="addExperienciaProfissional();" />
</div>