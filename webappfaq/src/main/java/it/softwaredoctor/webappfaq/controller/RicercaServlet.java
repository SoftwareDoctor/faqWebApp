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

@WebServlet("/ricerca")
public class RicercaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private FaqRepository faqRepository = new FaqRepositoryImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("q") != null) {
            String term = request.getParameter("q");
            List<Faq> faqsTrovati = faqRepository.findByTitolo(term);

            int totalLikes = 0;
            int totalDislikes = 0;

            for (Faq faq : faqsTrovati) {
                totalLikes += faq.getLikes();
                totalDislikes += faq.getDislikes();
            }

            request.setAttribute("totalLikes", totalLikes);
            request.setAttribute("totalDislikes", totalDislikes);
            request.setAttribute("faqsTrovati", faqsTrovati);

            if (faqsTrovati.isEmpty()) {
                request.setAttribute("messaggio", "Nessun risultato trovato per la ricerca: " + term);
                request.getRequestDispatcher("errore.jsp").forward(request, response);
            } else {
                request.setAttribute("referer", request.getRequestURL() + "?q=" + term);
                request.getRequestDispatcher("faqsTrovati.jsp").forward(request, response);
            }
        }
    }
}
