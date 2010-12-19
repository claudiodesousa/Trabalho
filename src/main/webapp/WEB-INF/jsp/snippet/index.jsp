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

						<select name="snippet.linguagem">
						    <option value=".txt">
						Plain Text    </option>
						    <option value=".as">
						
						ActionScript    </option>
						    <option value=".c">
						C    </option>
						    <option value=".cs">
						C#    </option>
						    <option value=".cpp">
						C++    </option>
						    <option value=".cl">
						Common Lisp    </option>
						
						    <option value=".css">
						CSS    </option>
						    <option value=".diff">
						Diff    </option>
						    <option value=".sls">
						Emacs Lisp    </option>
						    <option value=".hrl">
						Erlang    </option>
						    <option value=".hs">
						
						Haskell    </option>
						    <option value=".html">
						HTML    </option>
						    <option value=".java">
						Java    </option>
						    <option value=".js">
						JavaScript    </option>
						    <option value=".lua">
						Lua    </option>
						
						    <option value=".m">
						Objective-C    </option>
						    <option value=".pl">
						Perl    </option>
						    <option value=".php">
						PHP    </option>
						    <option value=".py">
						Python    </option>
						    <option value=".rb">
						
						Ruby    </option>
						    <option value=".scala">
						Scala    </option>
						    <option value=".sls">
						Scheme    </option>
						    <option value=".sql">
						SQL    </option>
						    <option value=".tex">
						TeX    </option>
						
						    <option value=".xml">
						XML    </option>
						    <option value="   ">
						---    </option>
						    <option value=".adb">
						Ada    </option>
						    <option value=".scpt">
						AppleScript    </option>
						    <option value=".arc">
						
						Arc    </option>
						    <option value=".ascx">
						ASP    </option>
						    <option value=".asm">
						Assembly    </option>
						    <option value=".bat">
						Batchfile    </option>
						    <option value=".befunge">
						Befunge    </option>
						
						    <option value=".boo">
						Boo    </option>
						    <option value=".b">
						Brainfuck    </option>
						    <option value=".c-objdump">
						C-ObjDump    </option>
						    <option value=".java">
						ChucK    </option>
						    <option value=".clj">
						
						Clojure    </option>
						    <option value=".coffee">
						CoffeeScript    </option>
						    <option value=".cfm">
						ColdFusion    </option>
						    <option value=".cppobjdump">
						Cpp-ObjDump    </option>
						    <option value=".feature">
						Cucumber    </option>
						
						    <option value=".d">
						D    </option>
						    <option value=".d  -objdump">
						D-ObjDump    </option>
						    <option value=".darcspatch">
						Darcs Patch    </option>
						    <option value=".pas">
						Delphi    </option>
						    <option value=".rb">
						
						Duby    </option>
						    <option value=".dylan">
						Dylan    </option>
						    <option value=".e">
						Eiffel    </option>
						    <option value=".fs">
						F#    </option>
						    <option value=".factor">
						Factor    </option>
						
						    <option value=".f">
						FORTRAN    </option>
						    <option value=".s">
						GAS    </option>
						    <option value=".kid">
						Genshi    </option>
						    <option value=".sh">
						Gentoo Ebuild    </option>
						    <option value=".sh">
						
						Gentoo Eclass    </option>
						    <option value=".po">
						Gettext Catalog    </option>
						    <option value=".go">
						Go    </option>
						    <option value=".man">
						Groff    </option>
						    <option value=".groovy">
						Groovy    </option>
						
						    <option value=".haml">
						Haml    </option>
						    <option value=".hx">
						HaXe    </option>
						    <option value=".mustache">
						HTML+Django    </option>
						    <option value=".erb">
						HTML+ERB    </option>
						    <option value=".phtml">
						
						HTML+PHP    </option>
						    <option value=".ini">
						INI    </option>
						    <option value=".io">
						Io    </option>
						    <option value=".weechatlog">
						IRC log    </option>
						    <option value=".jsp">
						Java Server Pages    </option>
						
						    <option value=".js">
						JSON    </option>
						    <option value=".lhs">
						Literate Haskell    </option>
						    <option value=".ll">
						LLVM    </option>
						    <option value=".mak">
						Makefile    </option>
						    <option value=".mao">
						
						Mako    </option>
						    <option value=".mkd">
						Markdown    </option>
						    <option value=".matlab">
						Matlab    </option>
						    <option value=".mxt">
						Max/MSP    </option>
						    <option value=".md">
						MiniD    </option>
						
						    <option value=".rb">
						Mirah    </option>
						    <option value=".moo">
						Moocode    </option>
						    <option value=".mu">
						mupad    </option>
						    <option value=".myt">
						Myghty    </option>
						    <option value=".sls">
						
						Nu    </option>
						    <option value=".numpy">
						NumPy    </option>
						    <option value=".objdump">
						ObjDump    </option>
						    <option value=".j">
						Objective-J    </option>
						    <option value=".fs">
						OCaml    </option>
						
						    <option value=".ooc">
						ooc    </option>
						    <option value=".pir">
						Parrot Internal Representation    </option>
						    <option value=".pd">
						Pure Data    </option>
						    <option value=".pytb">
						Python traceback    </option>
						    <option value=".r">
						
						R    </option>
						    <option value=".rkt">
						Racket    </option>
						    <option value=".raw">
						Raw token data    </option>
						    <option value=".rebol">
						Rebol    </option>
						    <option value=".cw">
						Redcode    </option>
						
						    <option value=".rst">
						reStructuredText    </option>
						    <option value=".rhtml">
						RHTML    </option>
						    <option value=".sass">
						Sass    </option>
						    <option value=".self">
						Self    </option>
						    <option value=".sh">
						
						Shell    </option>
						    <option value=".st">
						Smalltalk    </option>
						    <option value=".tpl">
						Smarty    </option>
						    <option value=".sc">
						SuperCollider    </option>
						    <option value=".tcl">
						Tcl    </option>
						
						    <option value=".tcsh">
						Tcsh    </option>
						    <option value=".txt">
						Text    </option>
						    <option value=".textile">
						Textile    </option>
						    <option value=".vala">
						Vala    </option>
						    <option value=".v">
						
						Verilog    </option>
						    <option value=".vhdl">
						VHDL    </option>
						    <option value=".vim">
						VimL    </option>
						    <option value=".bas">
						Visual Basic    </option>
						    <option value=".xqy">
						XQuery    </option>
						
						    <option value=".yml">
						YAML    </option>
						  </select>

    				
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
					<td>

						<form action="<c:url value="/snippets/search"/>" method="post" >
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