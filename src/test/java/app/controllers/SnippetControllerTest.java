package app.controllers;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class SnippetControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new SnippetController(null, null, null));
 	}
}
