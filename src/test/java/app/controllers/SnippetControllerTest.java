package app.controllers;

import static org.junit.Assert.assertNotNull;
import app.models.Snippet;
import app.repositories.Repository;
import app.repositories.SnippetRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.view.Results;
import org.junit.*;
import static org.junit.Assert.*;

public class SnippetControllerTest {

	@Test public void controllerNotNull(SnippetController sc){
		assertNotNull(sc);
	}
	
	@Test public void testCreateFromController(Result r, Validator v, SnippetRepository rs){
		SnippetController sc = new SnippetController(r,rs,v);
		Snippet snippet = new Snippet();
		assertNotNull(snippet);	
		assertNotNull(rs);
		assertNotNull(r);
		assertNotNull(v);
		sc.create(snippet);
	}
	
	
}
