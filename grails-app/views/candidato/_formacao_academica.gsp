<g:if test="${hidden}">
<table>
</g:if>
<tr class="nested-fields" id="formacaoAcademica${i}" <g:if test="${hidden}">style="display:none;"</g:if>>
    <td>
        <g:select id="formacoesAcademicas[${i}].grauFormacao.id" name="formacoesAcademicas[${i}].grauFormacao.id" from="${selecadmais.GrauFormacao.list()}" optionKey="id" required="" value="${formacaoAcademica?.grauFormacao?.id}" class="many-to-one" noSelection="['':'']"/>
    </td>
    <td>
        <g:if test="${formacaoAcademica?.id != null}">
            <g:hiddenField name='formacoesAcademicas[${i}].id' value='${formacaoAcademica?.id}'/>
        </g:if>
        
        <g:hiddenField name='formacoesAcademicas[${i}].deleted' value='false'/>
        <g:hiddenField name='formacoesAcademicas[${i}].new' value='false'/>
     
        <g:textField name='formacoesAcademicas[${i}].instituicao' value='${formacaoAcademica?.instituicao}' />
    </td>
    <td>
        <g:textField name='formacoesAcademicas[${i}].cargaHoraria' value='${formacaoAcademica?.cargaHoraria}' />
    </td>
    <td>
        <g:jqDatePicker name="formacoesAcademicas[${i}].dataInicio"  value="${formatDate(format:'dd/MM/yyyy',date:formacaoAcademica?.dataInicio)}" style="width:100px" provider="datepicker" mascara="date"/>
    </td>
    <td>
        <g:jqDatePicker name="formacoesAcademicas[${i}].dataConclusao"  value="${formatDate(format:'dd/MM/yyyy',date:formacaoAcademica?.dataConclusao)}" style="width:100px" provider="datepicker" mascara="date"/>
    </td>
    <td>
        <span class="del-formacaoAcademica">
            <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
                style="vertical-align:middle;"/>
        </span>
    </td>
</tr>
<g:if test="${hidden}">
</table>
</g:if>
