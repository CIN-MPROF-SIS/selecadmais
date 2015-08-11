<p class="fields" id="opcao${io}" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:if test="${opcao?.id != null}">
        <g:hiddenField name='questoes[${i}].opcoes[${io}].id' value='${opcao?.id}'/>
    </g:if>
    
    <g:hiddenField name='questoes[${i}].opcoes[${io}].deleted' value='false'/>
    <g:hiddenField name='questoes[${i}].opcoes[${io}].new' value='false'/>
    <label>Opção</label>
    <g:textField name='questoes[${i}].opcoes[${io}].descricao' value='${opcao?.descricao}' size="20" />
    <g:checkBox name="questoes[${i}].opcoes[${io}].gabarito" value="${opcao?.gabarito}" />
    <label>Resposta Correta</label>
    <span class="del-opcao">
        <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
            style="vertical-align:middle;"/>
    </span>
</p>