<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<h1>Salve seu codigo</h1>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="<c:url value="/snippets"/>" method="post">
  <input type="combobox" name="filtro" value="${snippet.nome}"/>
 <input type="text" name="filtro" value="${snippet.nome}"/>

    <button type="submit">send</button>
</form>

<form action="<c:url value="/snippets"/>" method="post">
  
  <c:if test="${not empty snippet.id}">
    <input type="hidden" name="snippet.id" value="${snippet.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Nome:<br />
    <input type="text" name="snippet.nome" value="${snippet.nome}"/>
  </div>
  <div class="field">
    Codigo:<br />
    <TEXTAREA name="snippet.codigo" COLS = "50" ROWS = "8" value="${snippet.codigo}"/></TEXTAREA>
  </div>
  <div class="field">
    Tags:<br />
    <input type="text" name="snippet.tags" value="${snippet.tags}"/>
  </div>
  <div class="field">
    Linguagem:<br />
    <input type="text" name="snippet.linguagem" value="${snippet.linguagem}"/>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>
<table>
  <tr>
   <th>Nome</th>
   <th>Trecho de codigo</th>
   <th>Tags</th>
   <th>Linguagem</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${snippetList}" var="snippet">
  <tr>
      <td>
      ${snippet.nome}
    </td>
      <td>
      ${snippet.codigo}
    </td>
      <td>
      ${snippet.tags}
    </td>
      <td>
      ${snippet.linguagem}
    </td>
      <td><a href="<c:url value="/snippets/${snippet.id}"/>">show</a></td>
    <td><a href="<c:url value="/snippets/${snippet.id}/edit"/>">edit</a></td>
    <td>
      <form action="<c:url value="/snippets/${snippet.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
<a href="<c:url value="/snippets/new"/>">New Snippet</a> 
</body>