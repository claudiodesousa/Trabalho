<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

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
    <input type="text" name="snippet.codigo" value="${snippet.codigo}"/>
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

<a href="<c:url value="/snippets"/>">Back</a>

