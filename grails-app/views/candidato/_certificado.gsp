<g:if test="${hidden}">
<table>
</g:if>
<tr class="nested-fields" id="certificado${i}" <g:if test="${hidden}">style="display:none;"</g:if>>
   	<td>
       	<g:if test="${certificado?.id != null}">
            <g:hiddenField name='certificados[${i}].id' value='${certificado?.id}'/>
        </g:if>
        
        <g:hiddenField name='certificados[${i}].deleted' value='false'/>
        <g:hiddenField name='certificados[${i}].new' value='false'/>
     
        <g:textField name='certificados[${i}].descricao' value='${certificado?.descricao}' />
    </td>
    <td>
        <span class="del-certificado">
            <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
                style="vertical-align:middle;"/>
        </span>
    </td>
</tr>
<g:if test="${hidden}">
</table>
</g:if>