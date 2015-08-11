function addQuestao(){
  var clone = $("#questao_clone").clone()
  var htmlId = 'questoes['+childCountQuestoes+'].';
  var descricaoInput = clone.find("input[id$=descricao]");
  var notaInput = clone.find("input[id$=nota]");
  var btnAddOpcaoInput = clone.find("input[id$=btnAddOpcao]");
  var divOpcoes = clone.find("#childListOpcoes_clone");

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
  descricaoInput.attr('id',htmlId + 'descricao')
          .attr('name',htmlId + 'descricao');
  notaInput.attr('id',htmlId + 'nota')
          .attr('name',htmlId + 'nota');
  btnAddOpcaoInput.attr('id',htmlId + 'btnAddOpcao')
          .attr('name',htmlId + 'btnAddOpcao');
  btnAddOpcaoInput.attr("onclick", "addOpcao(" + childCountQuestoes + ")")
  divOpcoes.attr('id',"childListOpcoes" + childCountQuestoes)
          .attr('name',"childListOpcoes" + childCountQuestoes);

  clone.attr('id', 'questao'+childCountQuestoes);
  clone.attr('indice', childCountQuestoes);
  
  $("#childListQuestoes").append(clone);
  clone.show();
  descricaoInput.focus();
  childCountQuestoes++;
}

function addOpcao(idQuestao){
  try{
     var qtdeOpcoes = eval("childCountOpcoes" + idQuestao);
  }
  catch(ex){
      eval("childCountOpcoes" + idQuestao + "=0");
  }
  var qtdeOpcoes = eval("childCountOpcoes" + idQuestao);
 
  var clone = $("#opcao_clone").clone();
  var htmlId = 'questoes[' + idQuestao + '].opcoes['+qtdeOpcoes+'].';
  var descricaoInput = clone.find("input[id$=descricao]");
  var gabaritoInput = clone.find("input[id$=gabarito]");
  var hiddenGabaritoInput = clone.find("input[name$=_gabarito]");

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
  descricaoInput.attr('id',htmlId + 'descricao')
          .attr('name',htmlId + 'descricao');
  gabaritoInput.attr('id',htmlId + 'gabarito')
          .attr('name',htmlId + 'gabarito');
  hiddenGabaritoInput.attr('id',htmlId + '_gabarito')
          .attr('name',htmlId + '_gabarito');

  clone.attr('id', 'opcao'+qtdeOpcoes);
  
  $("#childListOpcoes" + idQuestao).append(clone);
  clone.show();
  descricaoInput.focus();
  qtdeOpcoes++;
  eval("childCountOpcoes" + idQuestao + "=" + qtdeOpcoes);
}

$( document ).ready(function() {

    //bind click event on delete buttons using jquery live
    $('.del-questao').on('click', function() {
        //find the parent div
        var prnt = $(this).parent().parent().parent();
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

    $('.del-opcao').on('click', function() {
        //find the parent div
        var prnt = $(this).parent().parent().parent();
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