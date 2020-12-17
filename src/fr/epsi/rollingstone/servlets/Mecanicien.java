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
@WebServlet("/Mecanicien")
public class Mecanicien extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mecanicien.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] choix = request.getParameterValues("choix");
		ArrayList<Voiture> voitures = (ArrayList<Voiture>) request.getServletContext().getAttribute("Voitures");
		if(!(choix == null || choix.length == 0)) {
			for (Voiture v : voitures) {
				for (String plaque : choix) {
					if(v.getEtat() == -1 && v.getPlaque().equals(plaque)) {
						v.setEtat(0);
					}
				}
			}
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mecanicien.jsp").forward(request, response);
	}
}