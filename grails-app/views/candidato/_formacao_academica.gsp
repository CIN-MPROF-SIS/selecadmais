<li id="formacaoAcademica${i}" class="formacaoAcademica-div" <g:if test="${hidden}">style="display:none;"</g:if>>
   	
   	<g:if test="${formacaoAcademica?.id != null}">
        <g:hiddenField name='formacoesAcademicas[${i}].id' value='${formacaoAcademica?.id}'/>
    </g:if>
    
    <g:hiddenField name='formacoesAcademicas[${i}].deleted' value='false'/>
    <g:hiddenField name='formacoesAcademicas[${i}].new' value='false'/>
 
    <g:textField name='formacoesAcademicas[${i}].instituicao' value='${formacaoAcademica?.instituicao}' />
    <g:textField name='formacoesAcademicas[${i}].cargaHoraria' value='${formacaoAcademica?.cargaHoraria}' />
    <g:select id="formacoesAcademicas[${i}].grauFormacao.id" name="formacoesAcademicas[${i}].grauFormacao.id" from="${selecadmais.GrauFormacao.list()}" optionKey="id" required="" value="${formacaoAcademica?.grauFormacao?.id}" class="many-to-one" noSelection="['':'']"/>

    <g:hiddenField id='formacoesAcademicas[${i}].dataInicio_year' name='formacoesAcademicas[${i}].dataInicio_year' value='${formatDate(format:'yyyy',date:formacaoAcademica?.dataInicio)}'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataInicio_month' name='formacoesAcademicas[${i}].dataInicio_month' value='${formatDate(format:'MM',date:formacaoAcademica?.dataInicio)}'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataInicio_day' name='formacoesAcademicas[${i}].dataInicio_day' value='${formatDate(format:'dd',date:formacaoAcademica?.dataInicio)}'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataInicio_hour' name='formacoesAcademicas[${i}].dataInicio_hour' value='0'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataInicio_minute' name='formacoesAcademicas[${i}].dataInicio_minute' value='0'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataInicio' name='formacoesAcademicas[${i}].dataInicio' value='struct'/>

    <g:textField id='formacoesAcademicas[${i}].dataInicio_value' name='formacoesAcademicas[${i}].dataInicio_value' value="${formatDate(format:'dd/MM/yyyy',date:formacaoAcademica?.dataInicio)}" size="10"/>
    
    <img src="/plugins/calendar-1.2.1/images/skin/calendar.png" id="formacoesAcademicas[${i}].dataInicio-trigger" alt="Date"/>

    <g:if test="${i != '_clone'}">

    <script type="text/javascript">

        Calendar.setup({
            name:"formacoesAcademicas[${i}].dataInicio",
            inputField:"formacoesAcademicas[${i}].dataInicio_value",
            ifFormat:"%d/%m/%Y",
            button:"formacoesAcademicas[${i}].dataInicio-trigger",                            
            showsTime:false,
            timeFormat:"24",
            onUpdate:formacoesAcademicas_dataInicio_updated,
            singleClick:true,
            range:[1999,2999]
            <g:if test="${ formacaoAcademica?.dataInicio != null}">
            ,
            date:new Date(${formatDate(format:'yyyy',date:formacaoAcademica?.dataInicio)},${formatDate(format:'MM',date:formacaoAcademica?.dataInicio)} - 1,${formatDate(format:'dd',date:formacaoAcademica?.dataInicio)},0,0)
            </g:if>
        });

        var dataInicio_triggerImage = $("[id='formacoesAcademicas[${i}].dataInicio-trigger']");
        dataInicio_triggerImage.attr("indice", "${i}")

        dataInicio_triggerImage.click(
            function()
            {
              indiceformacaoAcademica = $(this).attr("indice");
            }
        );
    </script>
    </g:if>

    <g:hiddenField id='formacoesAcademicas[${i}].dataConclusao_year' name='formacoesAcademicas[${i}].dataConclusao_year' value='${formatDate(format:'yyyy',date:formacaoAcademica?.dataConclusao)}'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataConclusao_month' name='formacoesAcademicas[${i}].dataConclusao_month' value='${formatDate(format:'MM',date:formacaoAcademica?.dataConclusao)}'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataConclusao_day' name='formacoesAcademicas[${i}].dataConclusao_day' value='${formatDate(format:'dd',date:formacaoAcademica?.dataConclusao)}'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataConclusao_hour' name='formacoesAcademicas[${i}].dataConclusao_hour' value='0'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataConclusao_minute' name='formacoesAcademicas[${i}].dataConclusao_minute' value='0'/>
    <g:hiddenField id='formacoesAcademicas[${i}].dataConclusao' name='formacoesAcademicas[${i}].dataConclusao' value='struct'/>

    <g:textField id='formacoesAcademicas[${i}].dataConclusao_value' name='formacoesAcademicas[${i}].dataConclusao_value' value='${formatDate(format:'dd/MM/yyyy',date:formacaoAcademica?.dataConclusao)}' size="10"/>
    
    <img src="/plugins/calendar-1.2.1/images/skin/calendar.png" id="formacoesAcademicas[${i}].dataConclusao-trigger" alt="Date"/>

    <g:if test="${i != '_clone'}">
    <script type="text/javascript">

        Calendar.setup({
            name:"formacoesAcademicas[${i}].dataConclusao",
            inputField:"formacoesAcademicas[${i}].dataConclusao_value",
            ifFormat:"%d/%m/%Y",
            button:"formacoesAcademicas[${i}].dataConclusao-trigger",                            
            showsTime:false,
            timeFormat:"24",
            onUpdate:formacoesAcademicas_dataConclusao_updated,
            singleClick:true,
            range:[1999,2999]
            <g:if test="${ formacaoAcademica?.dataConclusao != null}">
            ,
            date:new Date(${formatDate(format:'yyyy',date:formacaoAcademica?.dataConclusao)},${formatDate(format:'MM',date:formacaoAcademica?.dataConclusao)} - 1,${formatDate(format:'dd',date:formacaoAcademica?.dataConclusao)},0,0)
            </g:if>
        });

        var dataConclusao_triggerImage = $("[id='formacoesAcademicas[${i}].dataConclusao-trigger']");
          dataConclusao_triggerImage.attr("indice", "${i}")

          dataConclusao_triggerImage.click(
            function()
            {
              indiceformacaoAcademica = $(this).attr("indice");
            }
          );
    </script>
    </g:if>
 
    <span class="del-formacaoAcademica">
        <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
            style="vertical-align:middle;"/>
    </span>
</li>