var salvo = function(res,  status) {
	var txt = res.responseText;
	var data = eval('('+txt+')');	  
    alert(status);
    location.replace("/snippets");
   //location.reload();
}
var salvar = function() {
	
  var nome = $("#snippet_nome").val()
  var tags = $("#snippet_tags").val()  
  var linguagem = $("#snippet_linguagem").val()
  var codigo = snippet_codigo.getCode()
  if($("#atualiza").val() == "put"){
	  var id  = $("#id_snippet").val()
	  $.post("/snippets", {'snippet.nome' : nome, 'snippet.tags' : tags, 'snippet.linguagem' : linguagem, 'snippet.codigo': codigo, 
		  'snippet.id' : id, '_method' : "put"}, success = salvo);
	  
  }
  else{
	  $.post("/snippets", {'snippet.nome' : nome, 'snippet.tags' : tags, 'snippet.linguagem' : linguagem, 'snippet.codigo': codigo}, success = salvo);
  }
  
  return false;
};


var mudalinguagem = function(){
	
	var l = $('[name=snippet.linguagem]').val();
	var text = snippet_codigo.getCode();
	snippet_codigo.edit('cp-'+l,l)
	snippet_codigo.toggleEditor();
	snippet_codigo.setCode(text);
	snippet_codigo.toggleEditor();

	
}

function enviar(code)
{
	if(code != ' ')
		$('#snippet').val(code);
	else
		$('#snippet').val(null);
	
}