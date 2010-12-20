<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<script src="/codepress/codepress.js" type="text/javascript"></script> 
<script type="text/javascript" src="<c:url value="/javascripts/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/javascripts/lib.js"/>"></script>
<h1>Salve seu codigo</h1>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action=/snippets method="post" >
  
  <c:if test="${not empty snippet.id}">
    <input id="id_snippet" type="hidden" name="snippet.id" value="${snippet.id}"/>
      <input id="atualiza" type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Nome:<br />
    <input id="snippet_nome" type="text" name="snippet.nome" value="${snippet.nome}"/>
  </div>
	  <div class="field">
    Linguagem:<br />
    <select  id="snippet_linguagem" name="snippet.linguagem" onchange="mudalinguagem()" >
  <option  value="java" <c:if test="${snippet.linguagem eq \"java\" }"> selected="selected" </c:if>>Java</option>
   <option  value="php" <c:if test="${snippet.linguagem eq \"php\" }"> selected="selected" </c:if>>PHP</option>  
</select>
  </div>
   <div class="cd">
    Codigo:<br />
   			<textarea id="cp-java" style="display:none">${snippet.codigo}</textarea>
   			<textarea id="cp-php" style="display:none">${snippet.codigo}</textarea>
	 <textarea id="snippet_codigo" class="codepress  <c:choose> <c:when test="${snippet.linguagem eq \"java\"}">java"</c:when> <c:when test="${snippet.linguagem eq \"php\"}">php"</c:when><c:otherwise>java"</c:otherwise></c:choose> style="width:700px;height:200px;" >${snippet.codigo}</textarea>
	 <input type="hidden" id="snippet" name="snippet.codigo" value="${snippet.codigo}" />
	</div>
  <div class="field">
    Tags:<br />
    <input id="snippet_tags" type="text" name="snippet.tags" value="${snippet.tags}"/>
  </div>

    <button id="salvar" type="submit" onclick="javascript:enviar(snippet_codigo.getCode())">Salvar</button>
</form>
<form action="<c:url value="/snippets"/>" method="get">
	<div class="actions">
   <button id="novo" type="submit">Criar Novo</button>
  </div>
</form>

<td align="top">
<form action="<c:url value="/snippets/search"/>" method="post">
 <div class="field" >
    <input type="text" name="tag" />
  </div>

 <div class="actions">
    <button type="submit">Buscar</button>
  </div>
<br> <br> 
</form>
</td>
<h3>==== Listagem de codigos salvos ====</h3>
<table>
  <tr>
   <th>== Nome ==</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${snippetList}" var="snippet">
  <tr>
      <td>
      ${snippet.nome}
    </td>

    <td><a href="<c:url value="/snippets/${snippet.id}/edit"/>">  Ver o codigo</a></td>
    <td>
      <form action="<c:url value="/snippets/${snippet.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Você tem certeza?')">Remover</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
</body>
