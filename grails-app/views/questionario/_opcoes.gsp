<script type="text/javascript">
    var childCountOpcoes${i} = ${questao?.opcoes?.size()} + 0;
 </script>


 <fieldset style="width: 95%">
 	<div id="childListOpcoes${i}">
	 	<g:each var="opcao" in="${questao?.opcoes}" status="io">
	      <g:render template='opcao' model="['opcao':opcao,'io':io, 'i':i,'hidden':false]"/>
	  	</g:each>
	 </div>
	 <input type="button" id="btnAddOpcao" name="btnAddOpcao" value="Adicionar Opção" onclick="addOpcao(${i});" />
</fieldset>