var salvo = function(res) {
   alert('Salvo com sucesso');
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
	//$('.cd2').remove();
	//var codigo = '<div class="cd2"><textarea id="snippet_codigo" name="snippet.codigo" class="codepress '+ l +'" style="width:700px;height:200px;" ></textarea></div>'
	//$(codigo).appendTo('.cd');
	snippet_codigo.edit('cp-'+l,l)

	//snippet_codigo.edit('snippet_codigo', l);
	
	
}