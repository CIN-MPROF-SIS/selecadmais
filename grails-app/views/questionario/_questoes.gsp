<script type="text/javascript">
    var childCountQuestoes = ${questionarioInstance?.questoes?.size()} + 0;
 </script>

<div id="childListQuestoes">
	<g:each var="questao" in="${questionarioInstance.questoes}" status="i">
		<g:render template='questao' model="['questao':questao,'i':i,'hidden':false]"/>
	</g:each>
</div>
<input type="button" value="Adicionar Questão" onclick="addQuestao();" />