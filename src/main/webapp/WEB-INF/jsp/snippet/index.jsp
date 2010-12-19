<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<script src="/codepress/codepress.js" type="text/javascript"></script> 
<h1>Salve seu codigo</h1>


<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<table  border="0"  >
	<tr bordercolor="#BC8F8F">
		<td bordercolor="#BC8F8F">
			<form action="<c:url value="/snippets"/>" method="post">
  				<c:if test="${not empty snippet.id}">
    				<input type="hidden" name="snippet.id" value="${snippet.id}"/>
    				<input type="hidden" name="_method" value="put"/>
  				</c:if>
				<div class="field">
  				Nome:<br/>
    				<input type="text" name="snippet.nome" value="${snippet.nome}" SIZE=50/>
 			    </div>
 			    Codigo:<br/>
    			<textarea id="codigo" name="snippet.codigo" class="codepress java linenumbers-off" style="width:480px;height:200px;" wrap="off"/>${snippet.codigo}</textarea>
				<div class="field">
    				Tags:<br />
    				<input type="text" name="snippet.tags" value="${snippet.tags}"/>
  				</div>
  				<div class="field">
    				Linguagem:<br />
    				<input type="text" name="snippet.linguagem" value="${snippet.linguagem}"/>
  				</div>
  				<div class="actions">
    				<button type="submit">Salvar</button>
  				</div>
			</form>


			<form action="<c:url value="/snippets"/>" method="get">
				<div class="actions">
    				<button type="submit">Criar Novo</button>
  				</div>
			</form>
		</td>

		<td VALIGN=TOP>
			<table border="0">
			
			
				<tr>
					<td align="right">

						<form action="<c:url value="/snippets/search"/>" method="post">
	 						<div class="field" >
	    						<input type="text" name="tag" />
	    						<button type="submit">Buscar</button>
	  						</div>
						</form>
					</td>
					<br/>
				</tr>
				
				
				<tr>
				
					<table  border="1"  bordercolor="#FFFFFF" width="100%">
						<tr>
							<td>
								<h3>==== Listagem de codigos salvos ====</h3>
								<table border="0" bordercolor="#FFFFFF">
									<tr>
										<th >== Nome ==</th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
											
									<c:forEach items="${snippetList}" var="snippet">
										<tr>
											<td bgcolor="#F5F5DC">
												${snippet.nome}
											</td>
											
											<td><a href="<c:url value="/snippets/${snippet.id}/edit"/>">  Ver o codigo</a></td>
											<td>
												<form action="<c:url value="/snippets/${snippet.id}"/>" method="post">
											    	<input type="hidden" name="_method" value="delete"/>
											    	<button type="submit" onclick="return confirm('Voc� tem certeza?')">Remover</button>
												</form>
											</td>
										
										</tr>
									</c:forEach>
								</table>
							</tr>
						</td>
					</table>

				</tr>
				
			</table>
		</td>
	</tr>
	
</table>
		
</body>