package it.softwaredoctor.webappfaq.repositoryimpl;

import java.util.List;

import it.softwaredoctor.webappfaq.entity.Topic;
import it.softwaredoctor.webappfaq.repository.TopicRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class TopicRepositoryImpl extends JpaRepositoryImpl<Topic, Integer> implements TopicRepository {

	public TopicRepositoryImpl() {
		super(Topic.class);
	}

	

}
