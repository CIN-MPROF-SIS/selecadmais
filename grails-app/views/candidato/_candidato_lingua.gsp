<g:if test="${hidden}">
<table>
</g:if>
<tr class="nested-fields" id="candidatoLingua${i}" <g:if test="${hidden}">style="display:none;"</g:if>>
    <td>
        <g:if test="${candidatoLingua?.id != null}">
            <g:hiddenField name='candidatosLingua[${i}].id' value='${candidatoLingua?.id}'/>
        </g:if>
        
        <g:hiddenField name='candidatosLingua[${i}].deleted' value='false'/>
        <g:hiddenField name='candidatosLingua[${i}].new' value='false'/>
        <g:hiddenField name='teste' value='false' value="${candidatoLingua?.lingua?.id}"/>
     
        <g:select id="candidatosLingua[${i}].lingua.id" name="candidatosLingua[${i}].lingua.id" from="${selecadmais.Lingua.list()}" optionKey="id" required="" value="${candidatoLingua?.lingua?.id}" class="many-to-one" noSelection="['':'']"/>
    </td>
    <td>
        <g:select id="candidatosLingua[${i}].nivel.id" name="candidatosLingua[${i}].nivel.id" from="${selecadmais.Nivel.list()}" optionKey="id" required="" value="${candidatoLingua?.nivel?.id}" class="many-to-one" noSelection="['':'']" />
    </td>
    <td>
        <span class="del-candidatoLingua">
            <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
                style="vertical-align:middle;"/>
        </span>
    </td>
</tr>
<g:if test="${hidden}">
</table>
</g:if>