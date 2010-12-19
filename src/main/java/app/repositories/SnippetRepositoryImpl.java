package app.repositories;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import app.models.Snippet;

@Component
public class SnippetRepositoryImpl 
    extends Repository<Snippet, Long>
    implements SnippetRepository {

	public SnippetRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Snippet> findbyTag(String tag) {
	return  (List<Snippet>)entityManager.createQuery("From snippet " + "where tags like" + "%" + tag + "%").getResultList();
		
		
		
	}
}
