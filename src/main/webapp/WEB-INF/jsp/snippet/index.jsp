<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<h1>Listing Snippets</h1>

<table>
  <tr>
   <th>nome</th>
   <th>codigo</th>
   <th>tags</th>
   <th>linguagem</th>
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
