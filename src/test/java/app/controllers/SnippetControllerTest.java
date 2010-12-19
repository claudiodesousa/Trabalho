package app.controllers;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import app.models.Snippet;
import app.repositories.SnippetRepository;
import app.repositories.SnippetRepositoryImpl;
/*
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.util.test.MockResult;
import br.com.caelum.vraptor.validator.Message;
import br.com.caelum.vraptor.validator.ValidationException;*/

import org.junit.*;
import static org.junit.Assert.*;

public class SnippetControllerTest {

	@BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }
    /**
     * Test of index method, of class SnippetController.
     */
    @Test
    public void testIndex() {
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
        System.out.println("index");
        Snippet s = new Snippet();
        SnippetController instance = new SnippetController(r,rs,v);
        List<Snippet> expResult = new ArrayList<Snippet>();
        List result = instance.index(s, expResult);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testSearchByTag() {
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
        System.out.println("index");
        Snippet s = new Snippet();
        System.out.println("searchByTag");
        String tag = "";
        SnippetController instance = new SnippetController(r,rs,v);
        instance.searchByTag(tag);
    }
    
    @Test
    public void testCreate() {
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
		SnippetController sc = new SnippetController(r,rs,v);
		Snippet s = new Snippet();
        System.out.println("create");
        sc.create(s);
        assertNotNull(s);
    }
    /*FAZER PRA ESSE*/
    @Test
    public void testUpdate() {
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
		SnippetController sc = new SnippetController(r,rs,v);
		Snippet s = new Snippet();
        System.out.println("update");
        Snippet snippet = new Snippet();
        SnippetController instance = new SnippetController(r,rs,v);
        instance.update(s);
    }
    /*FAZER PRA ESSE*/
    @Test
    public void testEdit() {
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
		SnippetController sc = new SnippetController(r,rs,v);
		Snippet s = new Snippet();
		Snippet x = new Snippet();
		x = s;
        System.out.println("edit");
        Snippet snippet = new Snippet();
        SnippetController instance = new SnippetController(r,rs,v);
        instance.edit(s);
        assertNotSame(s, x);

    }

    @Test
    public void testDestroy() {
        System.out.println("destroy");
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
        Snippet s = new Snippet();
        SnippetController instance = new SnippetController(r,rs,v);;
        instance.destroy(s);
        assertNull(s);
    }
	
    @Test public void controllerNotNull(){
		Result r = null;
		Validator v = null;
		SnippetRepository rs = null;
		SnippetController sc = new SnippetController(r,rs,v);
		assertNotNull(sc);
	}
	
		
	@Test public void testNewSnippet(){
		Result r = null;
		Validator v = null;
		EntityManager e = null;
		SnippetRepository sr = new SnippetRepositoryImpl(e);
		SnippetController sc = new SnippetController(r,sr,v);
		
		Snippet s = new Snippet();
		sc.create(s);
		
		assertNotNull(s);
	}
	

}

