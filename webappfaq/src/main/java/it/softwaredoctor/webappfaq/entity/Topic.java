package it.softwaredoctor.webappfaq.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "topics")
public class Topic {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "nomeArgomento", nullable = false)
	private String nomeArgomento;

	@OneToMany(mappedBy = "topic", fetch = FetchType.LAZY)
	private List<Faq> faqs = new ArrayList<Faq>();

	public Topic(int id, String nomeArgomento) {
		super();
		this.id = id;
		this.nomeArgomento = nomeArgomento;
	}

	public Topic() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeArgomento() {
		return nomeArgomento;
	}

	public void setNomeArgomento(String nomeArgomento) {
		this.nomeArgomento = nomeArgomento;
	}

	public List<Faq> getFaqs() {
		return faqs;
	}

	public void setFaqs(List<Faq> faqs) {
		this.faqs = faqs;
	}

	@Override
	public String toString() {
		return "Topic [id=" + id + ", nomeArgomento=" + nomeArgomento + "]";
//		return "Topic [id=" + id + ", nomeArgomento=" + nomeArgomento + ", faqs=" + faqs + "]";
//		eliminato per evitare errore StackOverflow causato da faqs
	}

}

