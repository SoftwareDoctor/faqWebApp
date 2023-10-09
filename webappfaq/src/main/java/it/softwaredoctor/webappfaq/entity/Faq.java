package it.softwaredoctor.webappfaq.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "faq")
public class Faq {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "domanda", nullable = false)
	private String domanda;

	@ManyToOne
	@JoinColumn(name = "topic_id", nullable = false)
	private Topic topic;

	@Column(name = "risposta")
	private String risposta;

	@Column(name = "likes")
	private int likes;

	@Column(name = "dislikes")
	private int dislikes;

	public Faq(int id, String domanda, Topic topic, String risposta, int likes, int dislikes) {
		super();
		this.id = id;
		this.domanda = domanda;
		this.topic = topic;
		this.risposta = risposta;
		this.likes = likes;
		this.dislikes = dislikes;

	}

	public Faq() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDomanda() {
		return domanda;
	}

	public void setDomanda(String domanda) {
		this.domanda = domanda;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public String getRisposta() {
		return risposta;
	}

	public void setRisposta(String risposta) {
		this.risposta = risposta;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getDislikes() {
		return dislikes;
	}

	public void setDislikes(int dislikes) {
		this.dislikes = dislikes;
	}

	@Override
	public String toString() {
		return "Faq [id=" + id + ", domanda=" + domanda + ", topic=" + topic + ", risposta=" + risposta + ", likes="
				+ likes + ", dislikes=" + dislikes + "]";
	}

}
