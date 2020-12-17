package fr.epsi.rollingstone.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.epsi.rollingstone.beans.Voiture;

@SuppressWarnings("serial")
@WebServlet("/Gestionnaire")
public class Gestionnaire extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/gestionnaire.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String submit = request.getParameter("submit");
		String[] choix = request.getParameterValues("choix");
		String choixFinal = "";
		request.getSession().setAttribute("s", submit);

		for (String s : choix) {
			if (s.contains("checked")) {
				choixFinal = s;
			}
		}
		if (submit == "louer") {
			ArrayList<Voiture> voitures = (ArrayList<Voiture>) request.getServletContext().getAttribute("Voitures");
			for (Voiture voiture : voitures) {
				voiture.setCouleur(choixFinal);
				/**
				 * if (voiture.getPlaque() == choixFinal) { voiture.setEtat(1); }
				 */
			}
			// this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/gestionnaire.jsp").forward(request,
			// response);
		}
		if (submit == "restituer") {

		}
		if (submit == "checkup") {

		}

	}
}
