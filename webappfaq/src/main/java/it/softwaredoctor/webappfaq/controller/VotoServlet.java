package it.softwaredoctor.webappfaq.controller;

import java.io.IOException;
import java.util.List;

import it.softwaredoctor.webappfaq.entity.Faq;
import it.softwaredoctor.webappfaq.repository.FaqRepository;
import it.softwaredoctor.webappfaq.repositoryimpl.FaqRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/voto")
public class VotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FaqRepository faqRepository = new FaqRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String topicIdString = request.getParameter("faqId");
		String action = request.getParameter("action");
		String nomeArgomento = request.getParameter("nomeArgomento");
		if (topicIdString != null && !topicIdString.isEmpty()) {
			int faqId = Integer.parseInt(topicIdString);
			Faq faq = faqRepository.findById(faqId);
//			boolean voted = false;
			
			if ("like".equals(action)) {
				faq.setLikes(faq.getLikes() + 1);
//				voted = true;
			} else if ("dislike".equals(action)) {
				faq.setDislikes(faq.getDislikes() + 1);
//				voted = true;
			}
			faqRepository.update(faq);
			List<Faq> listaFaq = faqRepository.findAllFaqById(faqId);
			request.setAttribute("listaFaq", listaFaq);
			StringBuilder urlBuilder = new StringBuilder(request.getRequestURL().toString());
			urlBuilder.append("?id=").append(faqId).append("&nomeArgomento=").append(nomeArgomento);
			request.setAttribute("id", urlBuilder.toString());
			
			request.getRequestDispatcher("topic.jsp").forward(request, response);
		}
	}
}
