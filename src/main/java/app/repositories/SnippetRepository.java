package app.repositories;

import java.util.List;

import app.models.Snippet;

public interface SnippetRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Snippet entity);
	
	void update(Snippet entity);
	
	void destroy(Snippet entity);
	
	Snippet find(Long id);
	
	List<Snippet> findAll();

}
