// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self
//= require js/jquery-ui-1.10.4.custom
//= require jquery-ui/js/jquery-ui-1.10.4.custom.min

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$( document ).ready(function() {
  var mascaras = Array();
  mascaras['date'] = '99/99/9999';
  mascaras['cep'] = '99999-999';
  mascaras['telefone'] = '(99) 99999999';
  mascaras['cpf'] = '999.999.999-99';
  mascaras['cnpj'] = '99.999.999/9999-99';
  
  for(mascara in mascaras)
  {
    //alert(mascara + "-" + mascaras[mascara]);
    $('[mascara=' + mascara + ']').mask(mascaras[mascara]);
  }

    $('body').on('focus',"[provider=datepicker]", function(){
        $(this).datepicker({ "dateFormat": "dd/mm/yy"});
    });
});
