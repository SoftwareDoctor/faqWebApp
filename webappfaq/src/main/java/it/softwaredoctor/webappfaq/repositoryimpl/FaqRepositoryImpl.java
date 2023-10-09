package it.softwaredoctor.webappfaq.repositoryimpl;

import java.util.ArrayList;
import java.util.List;

import it.softwaredoctor.webappfaq.entity.Faq;
import it.softwaredoctor.webappfaq.repository.FaqRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class FaqRepositoryImpl extends JpaRepositoryImpl<Faq, Integer> implements FaqRepository {

	public FaqRepositoryImpl() {
		super(Faq.class);
	}

	@Override
	public List<Faq> findAllFaqById(int id) {
		List<Faq> listaFaq = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Faq> query = em.createQuery("SELECT f FROM Faq f JOIN f.topic t WHERE t.id = :id", Faq.class);
			query.setParameter("id", id);
			listaFaq = query.getResultList();

			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return listaFaq;
	}

	@Override
	public List<Faq> findByTitolo(String term) {
		List<Faq> faqs = new ArrayList<Faq>();
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Faq> query = em
					.createQuery("select f from Faq f WHERE f.domanda like :term OR f.risposta like :term", Faq.class);
			query.setParameter("term", "%" + term + "%");
			faqs = query.getResultList();
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return faqs;
	}

}
