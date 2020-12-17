package fr.epsi.rollingstone.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/gestionnaire.jsp").forward(request, response);
		if(request.getSession().getAttribute("s") == "abc") {
			request.getSession().setAttribute("s", "deffffff");
		}else {
			request.getSession().setAttribute("s", "abc");
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String submit = request.getParameter("operation");
		String choix = request.getParameter("choix");
		ArrayList<Voiture> voitures = (ArrayList<Voiture>) request.getServletContext().getAttribute("Voitures");
		if(!(choix == null || submit == null || choix == "" || submit == "")) {
			Voiture voiture = null;
			for (Voiture v : voitures) {
				if (v.getPlaque().equals(choix)) {
					voiture = v;
				}
			}
			if (submit.equals("louer")) {
				voiture.setEtat(1);
			}else if (submit.equals("restituer")) {
				voiture.setEtat(0);
			}else if (submit.equals("checkup")) {
				voiture.setEtat(-1);
			}else if (submit.equals("reserver")) {
				voiture.setEtat(2);
			}
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/gestionnaire.jsp").forward(request, response);
	}
	
	
}