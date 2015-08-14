<div class="fields" id="questao${i}" <g:if test="${hidden}">style="display:none;"</g:if>>
  <fieldset>
    <p>
        <g:if test="${questao?.id != null}">
            <g:hiddenField name='questoes[${i}].id' value='${questao?.id}'/>
        </g:if>
        
        <g:hiddenField name='questoes[${i}].deleted' value='false'/>
        <g:hiddenField name='questoes[${i}].new' value='false'/>
        <label>Pergunta</label>
        <g:textField name='questoes[${i}].descricao' value='${questao?.descricao}' size="50" />
        <label>Nota</label>
        <g:textField name='questoes[${i}].nota' value='${questao?.nota}' size="8"/>
        <span class="del-questao">
            <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
                style="vertical-align:middle;"/>
        </span>
    </p>
    <g:render template="opcoes" model="['questao':questao]" />

  </fieldset>
</div>