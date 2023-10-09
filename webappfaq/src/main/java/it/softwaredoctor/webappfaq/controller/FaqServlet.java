package it.softwaredoctor.webappfaq.controller;

import java.io.IOException;
import java.util.List;

import it.softwaredoctor.webappfaq.entity.*;
import it.softwaredoctor.webappfaq.repository.*;
import it.softwaredoctor.webappfaq.repositoryimpl.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/faq")
public class FaqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FaqRepository faqRepository = new FaqRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String topicIdString = request.getParameter("id");
		String nomeArgomento = request.getParameter("nomeArgomento");
		if (topicIdString != null && !topicIdString.isEmpty()) {
			int idTopic = Integer.parseInt(topicIdString);

			List<Faq> listaFaq = faqRepository.findAllFaqById(idTopic);

			if (listaFaq != null) {
				for (Faq faq : listaFaq) {
					System.out.println(faq);
				}
				// request.setAttribute("id", request.getRequestURL() + "?id=" + idTopic +
				// "&nomeArgomento=" + nomeArgomento);
				request.setAttribute("id", request.getRequestURL() + "?id=" + idTopic + "?nomeArgomento=" + nomeArgomento);
				request.setAttribute("listaFaq", listaFaq);
				request.getRequestDispatcher("topic.jsp").forward(request, response);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
