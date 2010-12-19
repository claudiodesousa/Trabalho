package app.models;

import static org.junit.Assert.*;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class SnippetTest {

    @Test public void testSnippetNotNull() {
    	Snippet s = new Snippet();
  		assertNotNull(s);
  	}
    
    @Test public void testNewSnippet(){
    	String nome = "aa",linguagem = "c",codigo = "for",tags = "c, for";
    	Snippet s = new Snippet();
    	
    	s.setNome(nome);
    	s.setLinguagem(linguagem);
    	s.setCodigo(codigo);
    	s.setTags(tags);
    	assertEquals("aa", s.getNome());
    	assertEquals("for", s.getCodigo());
    	assertEquals("c, for", s.getTags());
    	assertEquals("c", s.getLinguagem());
    }
    
    @Test public void testNewSnippetWithoutFieldsShouldFail(){
    	String nome = "aa",linguagem = "c",codigo = "for",tags = "c, for";
    	Snippet s = new Snippet();
    	
    	s.setNome(nome);
    	s.setLinguagem(linguagem);
    	s.setCodigo(codigo);
    	s.setTags(tags);
    	assertNotNull(s.getNome());
    	assertNotNull(s.getCodigo());
    	assertNotNull(s.getTags());
    	assertNotNull(s.getLinguagem());
    }
    
    
    @Test public void testSnippet(){
    	
    	Snippet s = new Snippet();
    	assertNull(s.getNome());
    	assertNull(s.getCodigo());
    	assertNull(s.getLinguagem());
    	assertNull(s.getTags());
    }
    
    
    
}

