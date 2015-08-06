<li id="experienciaProfissional${i}" class="experienciaProfissional-div" <g:if test="${hidden}">style="display:none;"</g:if>>
   	
   	<g:if test="${experienciaProfissional?.id != null}">
        <g:hiddenField name='experienciasProfissionais[${i}].id' value='${experienciaProfissional?.id}'/>
    </g:if>
    
    <g:hiddenField name='experienciasProfissionais[${i}].deleted' value='false'/>
    <g:hiddenField name='experienciasProfissionais[${i}].new' value='false'/>
 
    <g:textField name='experienciasProfissionais[${i}].empresa' value='${experienciaProfissional?.empresa}' />

    <g:textField name='experienciasProfissionais[${i}].areaAtuacao' value='${experienciaProfissional?.areaAtuacao}' />

    <g:hiddenField id='experienciasProfissionais[${i}].dataInicio_year' name='experienciasProfissionais[${i}].dataInicio_year' value='${formatDate(format:'yyyy',date:experienciaProfissional?.dataInicio)}'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataInicio_month' name='experienciasProfissionais[${i}].dataInicio_month' value='${formatDate(format:'MM',date:experienciaProfissional?.dataInicio)}'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataInicio_day' name='experienciasProfissionais[${i}].dataInicio_day' value='${formatDate(format:'dd',date:experienciaProfissional?.dataInicio)}'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataInicio_hour' name='experienciasProfissionais[${i}].dataInicio_hour' value='0'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataInicio_minute' name='experienciasProfissionais[${i}].dataInicio_minute' value='0'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataInicio' name='experienciasProfissionais[${i}].dataInicio' value='struct'/>

    <g:textField id='experienciasProfissionais[${i}].dataInicio_value' name='experienciasProfissionais[${i}].dataInicio_value' value="${formatDate(format:'dd/MM/yyyy',date:experienciaProfissional?.dataInicio)}" size="10"/>
    
    <img src="/plugins/calendar-1.2.1/images/skin/calendar.png" id="experienciasProfissionais[${i}].dataInicio-trigger" alt="Date"/>

    <g:if test="${i != '_clone'}">

    <script type="text/javascript">

        Calendar.setup({
            name:"experienciasProfissionais[${i}].dataInicio",
            inputField:"experienciasProfissionais[${i}].dataInicio_value",
            ifFormat:"%d/%m/%Y",
            button:"experienciasProfissionais[${i}].dataInicio-trigger",                            
            showsTime:false,
            timeFormat:"24",
            onUpdate:experienciasProfissionais_dataInicio_updated,
            singleClick:true,
            range:[1999,2999]
            <g:if test="${ experienciaProfissional?.dataInicio != null}">
            ,
            date:new Date(${formatDate(format:'yyyy',date:experienciaProfissional?.dataInicio)},${formatDate(format:'MM',date:experienciaProfissional?.dataInicio)} - 1,${formatDate(format:'dd',date:experienciaProfissional?.dataInicio)},0,0)
            </g:if>
        });

        var dataInicio_triggerImage = $("[id='experienciasProfissionais[${i}].dataInicio-trigger']");
        dataInicio_triggerImage.attr("indice", "${i}")

        dataInicio_triggerImage.click(
            function()
            {
              indiceExperienciaProfissional = $(this).attr("indice");
            }
        );
    </script>
    </g:if>

    <g:hiddenField id='experienciasProfissionais[${i}].dataConclusao_year' name='experienciasProfissionais[${i}].dataConclusao_year' value='${formatDate(format:'yyyy',date:experienciaProfissional?.dataConclusao)}'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataConclusao_month' name='experienciasProfissionais[${i}].dataConclusao_month' value='${formatDate(format:'MM',date:experienciaProfissional?.dataConclusao)}'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataConclusao_day' name='experienciasProfissionais[${i}].dataConclusao_day' value='${formatDate(format:'dd',date:experienciaProfissional?.dataConclusao)}'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataConclusao_hour' name='experienciasProfissionais[${i}].dataConclusao_hour' value='0'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataConclusao_minute' name='experienciasProfissionais[${i}].dataConclusao_minute' value='0'/>
    <g:hiddenField id='experienciasProfissionais[${i}].dataConclusao' name='experienciasProfissionais[${i}].dataConclusao' value='struct'/>

    <g:textField id='experienciasProfissionais[${i}].dataConclusao_value' name='experienciasProfissionais[${i}].dataConclusao_value' value='${formatDate(format:'dd/MM/yyyy',date:experienciaProfissional?.dataConclusao)}' size="10"/>
    
    <img src="/plugins/calendar-1.2.1/images/skin/calendar.png" id="experienciasProfissionais[${i}].dataConclusao-trigger" alt="Date"/>

    <g:if test="${i != '_clone'}">
    <script type="text/javascript">

        Calendar.setup({
            name:"experienciasProfissionais[${i}].dataConclusao",
            inputField:"experienciasProfissionais[${i}].dataConclusao_value",
            ifFormat:"%d/%m/%Y",
            button:"experienciasProfissionais[${i}].dataConclusao-trigger",                            
            showsTime:false,
            timeFormat:"24",
            onUpdate:experienciasProfissionais_dataConclusao_updated,
            singleClick:true,
            range:[1999,2999]
            <g:if test="${ experienciaProfissional?.dataConclusao != null}">
            ,
            date:new Date(${formatDate(format:'yyyy',date:experienciaProfissional?.dataConclusao)},${formatDate(format:'MM',date:experienciaProfissional?.dataConclusao)} - 1,${formatDate(format:'dd',date:experienciaProfissional?.dataConclusao)},0,0)
            </g:if>
        });

        var dataConclusao_triggerImage = $("[id='experienciasProfissionais[${i}].dataConclusao-trigger']");
          dataConclusao_triggerImage.attr("indice", "${i}")

          dataConclusao_triggerImage.click(
            function()
            {
              indiceExperienciaProfissional = $(this).attr("indice");
            }
          );
    </script>
    </g:if>
 
    <span class="del-experienciaProfissional">
        <img src="${resource(dir:'images/skin', file:'icon_delete.png')}"
            style="vertical-align:middle;"/>
    </span>
</li>