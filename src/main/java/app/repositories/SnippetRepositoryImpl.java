package app.repositories;

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
}
