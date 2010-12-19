package app.controllers;

import java.util.List;

import app.models.Snippet;
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

@Resource
public class SnippetController {

	private final Result result;
	private final SnippetRepository repository;
	private final Validator validator;
	
	public SnippetController(Result result, SnippetRepository repository, Validator validator) {
		this.result = result;
		this.repository = repository;
		this.validator = validator;
	}
	
	@Get
	@Path("/snippets")
	public List<Snippet> index(Snippet s, List<Snippet> snippetList) {
		if(s == null && snippetList == null){
			return repository.findAll();
		}else{
			if(snippetList == null){
				result.include("snippet", s);
				return repository.findAll();
			}
			else{
				return snippetList;
			}
			
		}
			
		
	}
	
	@Post
	@Path("/snippets/search")
	public void searchByTag(String tag) {	
			result.redirectTo(this).index(null,repository.findbyTag(tag));
	}
	
	
	@Post
	@Path("/snippets")
	public void create(Snippet snippet) {
		validator.validate(snippet);
		validator.onErrorUsePageOf(this).newSnippet();
		repository.create(snippet);
		result.redirectTo(this).index(snippet,null);
	}
	
	@Get
	@Path("/snippets/new")
	public Snippet newSnippet() {
		return new Snippet();
	}
	
	@Put
	@Path("/snippets")
	public void update(Snippet snippet) {
		validator.validate(snippet);
		validator.onErrorUsePageOf(this).edit(snippet);
		repository.update(snippet);
		result.redirectTo(this).index(snippet,null);
	}
	
	@Get
	@Path("/snippets/{snippet.id}/edit")
	public void edit(Snippet snippet) {
		this.result.use(Results.logic()).redirectTo(SnippetController.class).index(repository.find(snippet.getId()),null);
		
		
	}

	@Get
	@Path("/snippets/{snippet.id}")
	public Snippet show(Snippet snippet) {
		return repository.find(snippet.getId());
	}

	@Delete
	@Path("/snippets/{snippet.id}")
	public void destroy(Snippet snippet) {
		repository.destroy(repository.find(snippet.getId()));
		result.redirectTo(this).index(null,null);  
	}
	
}
