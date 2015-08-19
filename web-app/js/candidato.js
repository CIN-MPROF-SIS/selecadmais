var indiceExperienciaProfissional;
var indiceFormacaoAcademica;

function montarMunicipios(ar, combo)
{
    var $municipio = $('#' + combo)
      $municipio.append($('<option>', { 
          value: "",
          text : "" 
      }));

    for(var cont = 0; cont < ar.length; cont++)
    {
      var objeto = ar[cont];
        $municipio.append($('<option>', { 
            value: objeto.id,
            text : objeto.nome 
        }));
    }
    /*alert(valor);
    pegar valor de um hidden
    if(valor != null && valor != undefined)
    {
      $municipio.val(valor);
    }*/
}

function experienciasProfissionais_dataInicio_updated(calendar) 
{
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio').value='struct'
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_year').value= calendar.date.getFullYear();
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_month').value= calendar.date.getMonth()+1;
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_day').value= calendar.date.getDate();

    if(calendar.showsTime) {
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_hour').value= calendar.date.getHours();
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_minute').value= calendar.date.getMinutes();
    }else {
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_hour').value = 0;
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataInicio_minute').value = 0;
    }

}

function experienciasProfissionais_dataConclusao_updated(calendar) 
{
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao').value='struct'
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_year').value= calendar.date.getFullYear();
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_month').value= calendar.date.getMonth()+1;
    document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_day').value= calendar.date.getDate();

    if(calendar.showsTime) {
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_hour').value= calendar.date.getHours();
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_minute').value= calendar.date.getMinutes();
    }else {
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_hour').value = 0;
      document.getElementById('experienciasProfissionais['+ indiceExperienciaProfissional + '].dataConclusao_minute').value = 0;
    }

}

function formacoesAcademicas_dataInicio_updated(calendar) 
{
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio').value='struct'
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_year').value= calendar.date.getFullYear();
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_month').value= calendar.date.getMonth()+1;
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_day').value= calendar.date.getDate();

    if(calendar.showsTime) {
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_hour').value= calendar.date.getHours();
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_minute').value= calendar.date.getMinutes();
    }else {
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_hour').value = 0;
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataInicio_minute').value = 0;
    }

}

function formacoesAcademicas_dataConclusao_updated(calendar) 
{
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao').value='struct'
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_year').value= calendar.date.getFullYear();
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_month').value= calendar.date.getMonth()+1;
    document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_day').value= calendar.date.getDate();

    if(calendar.showsTime) {
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_hour').value= calendar.date.getHours();
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_minute').value= calendar.date.getMinutes();
    }else {
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_hour').value = 0;
      document.getElementById('formacoesAcademicas['+ indiceFormacaoAcademica + '].dataConclusao_minute').value = 0;
    }

}

function addCertificado(){
  var clone = $("#certificado_clone").clone()
  var htmlId = 'certificados['+childCountCertificados+'].';
  var certificadoInput = clone.find("input[id$=descricao]");

  clone.find("input[id$=id]")
         .attr('id',htmlId + 'id')
         .attr('name',htmlId + 'id');
  clone.find("input[id$=deleted]")
          .attr('id',htmlId + 'deleted')
          .attr('name',htmlId + 'deleted');
  clone.find("input[id$=new]")
          .attr('id',htmlId + 'new')
          .attr('name',htmlId + 'new')
          .attr('value', 'true');
  certificadoInput.attr('id',htmlId + 'descricao')
          .attr('name',htmlId + 'descricao');

  clone.attr('id', 'certificado'+childCountCertificados);
  
  $("#childListCertificados").append(clone);
  clone.show();
  certificadoInput.focus();
  childCountCertificados++;
}

function addLingua(){
  var clone = $("#candidatoLingua_clone").clone()
  var htmlId = 'candidatosLingua['+childCountLinguas+'].';
  var linguaInput = clone.find("select[id$='lingua.id']");
  var nivelInput = clone.find("select[id$='nivel.id']");

  clone.find("input[id$=id]")
         .attr('id',htmlId + 'id')
         .attr('name',htmlId + 'id');
  clone.find("input[id$=deleted]")
          .attr('id',htmlId + 'deleted')
          .attr('name',htmlId + 'deleted');
  clone.find("input[id$=new]")
          .attr('id',htmlId + 'new')
          .attr('name',htmlId + 'new')
          .attr('value', 'true');
  linguaInput.attr('id',htmlId + 'lingua.id')
          .attr('name',htmlId + 'lingua.id');
  nivelInput.attr('id',htmlId + 'nivel.id')
          .attr('name',htmlId + 'nivel.id');

  clone.attr('id', 'candidatoLingua'+childCountLinguas);
  
  $("#childListLinguas").append(clone);
  clone.show();
  linguaInput.focus();
  childCountLinguas++;
}

function addExperienciaProfissional(){
  var clone = $("#experienciaProfissional_clone").clone()
  var htmlId = 'experienciasProfissionais['+childCountExperienciasProfissionais+'].';
  var empresaInput = clone.find("input[id$=empresa]");
  var areaAtuacaoInput = clone.find("input[id$=areaAtuacao]");
  var dataInicioInput = clone.find("input[id$=dataInicio]");
  var dataInicio_yearInput = clone.find("input[id$=dataInicio_year]");
  var dataInicio_monthInput = clone.find("input[id$=dataInicio_month]");
  var dataInicio_dayInput = clone.find("input[id$=dataInicio_day]");
  var dataInicio_hourInput = clone.find("input[id$=dataInicio_hour]");
  var dataInicio_minuteInput = clone.find("input[id$=dataInicio_minute]");
  var dataInicio_valueInput = clone.find("input[id$=dataInicio_value]");
  var dataConclusaoInput = clone.find("input[id$=dataConclusao]");
  var dataConclusao_yearInput = clone.find("input[id$=dataConclusao_year]");
  var dataConclusao_monthInput = clone.find("input[id$=dataConclusao_month]");
  var dataConclusao_dayInput = clone.find("input[id$=dataConclusao_day]");
  var dataConclusao_hourInput = clone.find("input[id$=dataConclusao_hour]");
  var dataConclusao_minuteInput = clone.find("input[id$=dataConclusao_minute]");
  var dataConclusao_valueInput = clone.find("input[id$=dataConclusao_value]");
  var dataInicio_triggerImage = clone.find("img[id$=dataInicio-trigger]");
  var dataConclusao_triggerImage = clone.find("img[id$='dataConclusao-trigger']");

  clone.find("input[id$=id]")
         .attr('id',htmlId + 'id')
         .attr('name',htmlId + 'id');
  clone.find("input[id$=deleted]")
          .attr('id',htmlId + 'deleted')
          .attr('name',htmlId + 'deleted');
  clone.find("input[id$=new]")
          .attr('id',htmlId + 'new')
          .attr('name',htmlId + 'new')
          .attr('value', 'true');
  empresaInput.attr('id',htmlId + 'empresa')
          .attr('name',htmlId + 'empresa');
  areaAtuacaoInput.attr('id',htmlId + 'areaAtuacao')
          .attr('name',htmlId + 'areaAtuacao');
  dataInicioInput.attr('id',htmlId + 'dataInicio')
          .attr('name',htmlId + 'dataInicio');
  dataInicio_yearInput.attr('id',htmlId + 'dataInicio_year')
          .attr('name',htmlId + 'dataInicio_year');
  dataInicio_monthInput.attr('id',htmlId + 'dataInicio_month')
          .attr('name',htmlId + 'dataInicio_month');
  dataInicio_dayInput.attr('id',htmlId + 'dataInicio_day')
          .attr('name',htmlId + 'dataInicio_day');
  dataInicio_hourInput.attr('id',htmlId + 'dataInicio_hour')
          .attr('name',htmlId + 'dataInicio_hour');
  dataInicio_minuteInput.attr('id',htmlId + 'dataInicio_minute')
          .attr('name',htmlId + 'dataInicio_minute');
  dataInicio_valueInput.attr('id',htmlId + 'dataInicio_value')
          .attr('name',htmlId + 'dataInicio_value');
  dataConclusaoInput.attr('id',htmlId + 'dataConclusao')
          .attr('name',htmlId + 'dataConclusao');
  dataConclusao_yearInput.attr('id',htmlId + 'dataConclusao_year')
          .attr('name',htmlId + 'dataConclusao_year');
  dataConclusao_monthInput.attr('id',htmlId + 'dataConclusao_month')
          .attr('name',htmlId + 'dataConclusao_month');
  dataConclusao_dayInput.attr('id',htmlId + 'dataConclusao_day')
          .attr('name',htmlId + 'dataConclusao_day');
  dataConclusao_hourInput.attr('id',htmlId + 'dataConclusao_hour')
          .attr('name',htmlId + 'dataConclusao_hour');
  dataConclusao_minuteInput.attr('id',htmlId + 'dataConclusao_minute')
          .attr('name',htmlId + 'dataConclusao_minute');
  dataConclusao_valueInput.attr('id',htmlId + 'dataConclusao_value')
          .attr('name',htmlId + 'dataConclusao_value');
  dataInicio_triggerImage.attr('id',htmlId + 'dataInicio-trigger')
          .attr('name',htmlId + 'dataInicio-trigger');
  dataConclusao_triggerImage.attr('id',htmlId + 'dataConclusao-trigger')
          .attr('name',htmlId + 'dataConclusao-trigger');


  clone.attr('id', 'experienciaProfissional'+childCountExperienciasProfissionais);
  
  $("#childListExperienciasProfissionais").append(clone);
  clone.show();
  empresaInput.focus();

  /*Calendar.setup({
      name:"experienciasProfissionais[" + childCountExperienciasProfissionais + "].dataInicio",
      inputField:"experienciasProfissionais[" + childCountExperienciasProfissionais + "].dataInicio_value",
      ifFormat:"%d/%m/%Y",
      button:"experienciasProfissionais[" + childCountExperienciasProfissionais + "].dataInicio-trigger",                            
      showsTime:false,
      timeFormat:"24",
      onUpdate:experienciasProfissionais_dataInicio_updated,
      singleClick:true,
      range:[1999,2999]
      
  });

  dataInicio_triggerImage.attr("indice", childCountExperienciasProfissionais)

  dataInicio_triggerImage.click(
    function()
    {
      indiceExperienciaProfissional = $(this).attr("indice");
    }
  );


  Calendar.setup({
      name:"experienciasProfissionais[" + childCountExperienciasProfissionais + "].dataConclusao",
      inputField:"experienciasProfissionais[" + childCountExperienciasProfissionais + "].dataConclusao_value",
      ifFormat:"%d/%m/%Y",
      button:"experienciasProfissionais[" + childCountExperienciasProfissionais + "].dataConclusao-trigger",                            
      showsTime:false,
      timeFormat:"24",
      onUpdate:experienciasProfissionais_dataConclusao_updated,
      singleClick:true,
      range:[1999,2999]
      
  });

  dataConclusao_triggerImage.attr("indice", childCountExperienciasProfissionais)

  dataConclusao_triggerImage.click(
    function()
    {
      indiceExperienciaProfissional = $(this).attr("indice");
    }
  );*/

  childCountExperienciasProfissionais++;
}

function addFormacaoAcademica(){
  var clone = $("#formacaoAcademica_clone").clone()
  var htmlId = 'formacoesAcademicas['+childCountFormacoesAcademicas+'].';
  var instituicaoInput = clone.find("input[id$=instituicao]");
  var cargaHorariaInput = clone.find("input[id$=cargaHoraria]");
  var grauFormacaoInput = clone.find("input[id$='grauFormacao.id']");
  var dataInicioInput = clone.find("input[id$=dataInicio]");
  var dataInicio_yearInput = clone.find("input[id$=dataInicio_year]");
  var dataInicio_monthInput = clone.find("input[id$=dataInicio_month]");
  var dataInicio_dayInput = clone.find("input[id$=dataInicio_day]");
  var dataInicio_hourInput = clone.find("input[id$=dataInicio_hour]");
  var dataInicio_minuteInput = clone.find("input[id$=dataInicio_minute]");
  var dataInicio_valueInput = clone.find("input[id$=dataInicio_value]");
  var dataConclusaoInput = clone.find("input[id$=dataConclusao]");
  var dataConclusao_yearInput = clone.find("input[id$=dataConclusao_year]");
  var dataConclusao_monthInput = clone.find("input[id$=dataConclusao_month]");
  var dataConclusao_dayInput = clone.find("input[id$=dataConclusao_day]");
  var dataConclusao_hourInput = clone.find("input[id$=dataConclusao_hour]");
  var dataConclusao_minuteInput = clone.find("input[id$=dataConclusao_minute]");
  var dataConclusao_valueInput = clone.find("input[id$=dataConclusao_value]");
  var dataInicio_triggerImage = clone.find("img[id$=dataInicio-trigger]");
  var dataConclusao_triggerImage = clone.find("img[id$='dataConclusao-trigger']");

  clone.find("input[id$=id]")
         .attr('id',htmlId + 'id')
         .attr('name',htmlId + 'id');
  clone.find("input[id$=deleted]")
          .attr('id',htmlId + 'deleted')
          .attr('name',htmlId + 'deleted');
  clone.find("input[id$=new]")
          .attr('id',htmlId + 'new')
          .attr('name',htmlId + 'new')
          .attr('value', 'true');
  instituicaoInput.attr('id',htmlId + 'instituicao')
          .attr('name',htmlId + 'instituicao');
  cargaHorariaInput.attr('id',htmlId + 'cargaHoraria')
          .attr('name',htmlId + 'cargaHoraria');
  grauFormacaoInput.attr('id',htmlId + 'grauFormacao.id')
          .attr('name',htmlId + 'grauFormacao.id');
  dataInicioInput.attr('id',htmlId + 'dataInicio')
          .attr('name',htmlId + 'dataInicio');
  dataInicio_yearInput.attr('id',htmlId + 'dataInicio_year')
          .attr('name',htmlId + 'dataInicio_year');
  dataInicio_monthInput.attr('id',htmlId + 'dataInicio_month')
          .attr('name',htmlId + 'dataInicio_month');
  dataInicio_dayInput.attr('id',htmlId + 'dataInicio_day')
          .attr('name',htmlId + 'dataInicio_day');
  dataInicio_hourInput.attr('id',htmlId + 'dataInicio_hour')
          .attr('name',htmlId + 'dataInicio_hour');
  dataInicio_minuteInput.attr('id',htmlId + 'dataInicio_minute')
          .attr('name',htmlId + 'dataInicio_minute');
  dataInicio_valueInput.attr('id',htmlId + 'dataInicio_value')
          .attr('name',htmlId + 'dataInicio_value');
  dataConclusaoInput.attr('id',htmlId + 'dataConclusao')
          .attr('name',htmlId + 'dataConclusao');
  dataConclusao_yearInput.attr('id',htmlId + 'dataConclusao_year')
          .attr('name',htmlId + 'dataConclusao_year');
  dataConclusao_monthInput.attr('id',htmlId + 'dataConclusao_month')
          .attr('name',htmlId + 'dataConclusao_month');
  dataConclusao_dayInput.attr('id',htmlId + 'dataConclusao_day')
          .attr('name',htmlId + 'dataConclusao_day');
  dataConclusao_hourInput.attr('id',htmlId + 'dataConclusao_hour')
          .attr('name',htmlId + 'dataConclusao_hour');
  dataConclusao_minuteInput.attr('id',htmlId + 'dataConclusao_minute')
          .attr('name',htmlId + 'dataConclusao_minute');
  dataConclusao_valueInput.attr('id',htmlId + 'dataConclusao_value')
          .attr('name',htmlId + 'dataConclusao_value');
  dataInicio_triggerImage.attr('id',htmlId + 'dataInicio-trigger')
          .attr('name',htmlId + 'dataInicio-trigger');
  dataConclusao_triggerImage.attr('id',htmlId + 'dataConclusao-trigger')
          .attr('name',htmlId + 'dataConclusao-trigger');


  clone.attr('id', 'formacaoAcademica'+childCountFormacoesAcademicas);
  
  $("#childListFormacoesAcademicas").append(clone);
  clone.show();
  instituicaoInput.focus();

  /*Calendar.setup({
      name:"formacoesAcademicas[" + childCountFormacoesAcademicas + "].dataInicio",
      inputField:"formacoesAcademicas[" + childCountFormacoesAcademicas + "].dataInicio_value",
      ifFormat:"%d/%m/%Y",
      button:"formacoesAcademicas[" + childCountFormacoesAcademicas + "].dataInicio-trigger",                            
      showsTime:false,
      timeFormat:"24",
      onUpdate:formacoesAcademicas_dataInicio_updated,
      singleClick:true,
      range:[1999,2999]
      
  });

  dataInicio_triggerImage.attr("indice", childCountFormacoesAcademicas)

  dataInicio_triggerImage.click(
    function()
    {
      indiceFormacaoAcademica = $(this).attr("indice");
    }
  );


  Calendar.setup({
      name:"formacoesAcademicas[" + childCountFormacoesAcademicas + "].dataConclusao",
      inputField:"formacoesAcademicas[" + childCountFormacoesAcademicas + "].dataConclusao_value",
      ifFormat:"%d/%m/%Y",
      button:"formacoesAcademicas[" + childCountFormacoesAcademicas + "].dataConclusao-trigger",                            
      showsTime:false,
      timeFormat:"24",
      onUpdate:formacoesAcademicas_dataConclusao_updated,
      singleClick:true,
      range:[1999,2999]
      
  });

  dataConclusao_triggerImage.attr("indice", childCountFormacoesAcademicas)

  dataConclusao_triggerImage.click(
    function()
    {
      indiceFormacaoAcademica = $(this).attr("indice");
    }
  );*/

  childCountFormacoesAcademicas++;
}

$( document ).ready(function() {
  $("#cmdUnidadeFederativa").change();
  $("#cmdUnidadeFederativaNaturalidade").change();

  //if($("#dataNascimento_year").val() != "")
  //$("#dataNascimento").val("struct");
  

  for(var cont = 0; cont <= childCountExperienciasProfissionais; cont++)
  {
    $("#experienciasProfissionais[" + cont + "].dataInicio").val("struct");
    $("#experienciasProfissionais[" + cont + "].dataConclusao").val("struct");
  }

  for(var cont = 0; cont <= childCountFormacoesAcademicas; cont++)
  {
    $("#formacoesAcademicas[" + cont + "].dataInicio").val("struct");
    $("#formacoesAcademicas[" + cont + "].dataConclusao").val("struct");
  }

    //bind click event on delete buttons using jquery live
    $('.del-certificado').on('click', function() {
        //find the parent div
        var prnt = $(this).parent().parent();
        
        //find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        //check if this is still not persisted
        var newValue = prnt.find("input[id$=new]").attr('value');
        //if it is new then i can safely remove from dom
        if(newValue == 'true'){
            prnt.remove();
        }else{
            //set the deletedFlag to true
            delInput.attr('value','true');
            //hide the div
            prnt.hide();
        }        
    });

    $('.del-candidatoLingua').on('click', function() {
        //find the parent div
        var prnt = $(this).parent().parent();
        //find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        //check if this is still not persisted
        var newValue = prnt.find("input[id$=new]").attr('value');
        //if it is new then i can safely remove from dom
        if(newValue == 'true'){
            prnt.remove();
        }else{
            //set the deletedFlag to true
            delInput.attr('value','true');
            //hide the div
            prnt.hide();
        }        
    });

    $('.del-experienciaProfissional').on('click', function() {
        //find the parent div
        var prnt = $(this).parent().parent();
        //find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        //check if this is still not persisted
        var newValue = prnt.find("input[id$=new]").attr('value');
        //if it is new then i can safely remove from dom
        if(newValue == 'true'){
            prnt.remove();
        }else{
            //set the deletedFlag to true
            delInput.attr('value','true');
            //hide the div
            prnt.hide();
        }        
    });

    $('.del-formacaoAcademica').on('click', function() {
        //find the parent div
        var prnt = $(this).parent().parent();
        //find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        //check if this is still not persisted
        var newValue = prnt.find("input[id$=new]").attr('value');
        //if it is new then i can safely remove from dom
        if(newValue == 'true'){
            prnt.remove();
        }else{
            //set the deletedFlag to true
            delInput.attr('value','true');
            //hide the div
            prnt.hide();
        }        
    });
});