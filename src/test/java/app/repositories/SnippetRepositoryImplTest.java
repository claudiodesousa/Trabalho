package app.repositories;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import app.repositories.SnippetRepository;

import org.hibernate.validator.AssertTrue;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import app.models.Entity;
import app.models.Snippet;

public class SnippetRepositoryImplTest {

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

    
    @Test
    public void testFindbyTag() {
        System.out.println("findbyTag");
        String tag = "a";
        EntityManager e = null;
        SnippetRepository instance = new SnippetRepositoryImpl(e);
        List expResult = new ArrayList<Snippet>();
        expResult = instance.findbyTag(tag);
        //List result = new ArrayList<Snippet>();
        //result.add(instance.findbyTag(tag));
        assertEquals(expResult, result);
    }

    
}

