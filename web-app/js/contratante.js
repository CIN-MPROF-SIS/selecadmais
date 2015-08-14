$( document ).ready(function() {
  $("#cmdUnidadeFederativa").change();

  //if($("#dataNascimento_year").val() != "")
  $("#dataNascimento").val("struct");

  rdTipoPessoa_Click(tipoPessoa);
});

  
function rdTipoPessoa_Click(rdTipoPessoa)
{
  if(rdTipoPessoa == "PF")
  {
    $("[pj]").hide();
    $("[pj]").val("");
    $("[pf]").show();
    $("#rdTipoPessoaPF").attr("checked", true);
  }
  else
  {
    $("[pj]").show();
    $("[pf]").hide();
    $("[pf]").val("");
    $("#rdTipoPessoaPJ").attr("checked", true);
  }
}