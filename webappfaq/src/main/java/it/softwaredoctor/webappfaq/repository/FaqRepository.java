package it.softwaredoctor.webappfaq.repository;

import java.util.List;

import it.softwaredoctor.webappfaq.entity.Faq;


public interface FaqRepository extends JpaRepository<Faq, Integer>{

	List<Faq> findAllFaqById(int id);
	List<Faq> findByTitolo (String term);
//	Long sumVoto (int faqId, int votoMiPiace, int votoNonMiPiace); 
	
	
}

