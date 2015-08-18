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
    $("[pj]").find(":input").removeAttr("required");
    $("[pj]").val("");
    $("[pf]").show();
    $("[pf]").find(":input").attr("required", true);
    $("#rdTipoPessoaPF").attr("checked", true);
  }
  else
  {
    $("[pj]").show();
    $("[pj]").find(":input").attr("required", true);
    $("[pf]").hide();
    $("[pf]").find(":input").removeAttr("required");
    $("[pf]").val("");
    $("#rdTipoPessoaPJ").attr("checked", true);
  }
}