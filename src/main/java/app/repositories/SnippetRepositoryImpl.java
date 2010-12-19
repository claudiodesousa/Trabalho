package app.repositories;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

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
		String t = "%"+ tag + "%";
		Query q = entityManager.createQuery("From Snippet " + "where tags like :tag" );
		q.setParameter("tag", t);  
	return  (List<Snippet>)q.getResultList();
		
		
		
	}
}
