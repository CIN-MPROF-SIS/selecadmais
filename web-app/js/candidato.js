function addCertificado(){
  var clone = $("#certificado_clone").clone()
  var htmlId = 'certificados['+childCount+'].';
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

  clone.attr('id', 'certificado'+childCount);
  
  $("#childListCertificados").append(clone);
  clone.show();
  certificadoInput.focus();
  childCount++;
}

function addLingua(){
  var clone = $("#candidatoLingua_clone").clone()
  var htmlId = 'candidatosLingua['+childCount+'].';
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

  clone.attr('id', 'certificado'+childCount);
  
  $("#childListCandidatosLinguas").append(clone);
  clone.show();
  linguaInput.focus();
  childCount++;
}

$( document ).ready(function() {
 
    //bind click event on delete buttons using jquery live
    $('.del-certificado').on('click', function() {
        //find the parent div
        var prnt = $(this).parents(".certificado-div");
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
        var prnt = $(this).parents(".candidatoLingua-div");
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