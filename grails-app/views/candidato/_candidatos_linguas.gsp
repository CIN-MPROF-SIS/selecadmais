<script type="text/javascript">
    var childCount = ${candidatoInstance?.candidatosLingua?.size()} + 0;
 </script>
<ul id="childListCandidatosLinguas" class="one-to-many">
    <g:each var="candidatoLingua" in="${candidatoInstance.candidatosLingua}" status="i">
        <g:render template='candidato_lingua' model="['candidatoLingua':candidatoLingua,'i':i,'hidden':false]"/>
    </g:each>
</ul>
<div>
  <label for="linguas">
    &nbsp;
    
  </label>
    <input type="button" value="Add Língua" onclick="addLingua();" />
</div>