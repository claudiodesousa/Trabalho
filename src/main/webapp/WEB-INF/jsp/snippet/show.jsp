<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<p>
  <b>Nome:</b>
   ${snippet.nome}
</p>
<p>
  <b>Codigo:</b>
   ${snippet.codigo}
</p>
<p>
  <b>Tags:</b>
   ${snippet.tags}
</p>
<p>
  <b>Linguagem:</b>
   ${snippet.linguagem}
</p>

<a href="<c:url value="/snippets/${snippet.id}/edit"/>">Edit</a>
<a href="<c:url value="/snippets"/>">Back</a>

</body>
