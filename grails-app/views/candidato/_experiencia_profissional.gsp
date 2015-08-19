<g:if test="${hidden}">
<table>
</g:if>
<tr class="nested-fields" id="experienciaProfissional${i}" <g:if test="${hidden}">style="display:none;"</g:if>>
    <td>
        <g:if test="${experienciaProfissional?.id != null}">
            <g:hiddenField name='experienciasProfissionais[${i}].id' value='${experienciaProfissional?.id}'/>
        </g:if>
        
        <g:hiddenField name='experienciasProfissionais[${i}].deleted' value='false'/>
        <g:hiddenField name='experienciasProfissionais[${i}].new' value='false'/>
     
        <g:textField name='experienciasProfissionais[${i}].empresa' value='${experienciaProfissional?.empresa}' />
    </td>
    <td>
        <g:textField name='experienciasProfissionais[${i}].areaAtuacao' value='${experienciaProfissional?.areaAtuacao}' />
    </td>
    <td>
        <g:jqDatePicker name="experienciasProfissionais[${i}].dataInicio"  value="${formatDate(format:'dd/MM/yyyy',date:experienciaProfissional?.dataInicio)}" style="width:100px" provider="datepicker" mascara="date"/>
    </td>
    <td>
        <g:jqDatePicker name="experienciasProfissionais[${i}].dataConclusao"  value="${formatDate(format:'dd/MM/yyyy',date:experienciaProfissional?.dataConclusao)}" style="width:100px" provider="datepicker" mascara="date"/>
    </td>
    <td>
        <span class="del-experienciaProfissional">
            <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
                style="vertical-align:middle;"/>
        </span>
    </td>
</tr>
<g:if test="${hidden}">
</table>
</g:if>