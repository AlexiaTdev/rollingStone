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
@WebServlet("/Accueil")
public class Accueil extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Voiture renault5 = new Voiture();
		renault5.setCouleur("rouge");
		renault5.setEnergie("diesel");
		renault5.setPrixParJour(12.4);
		renault5.setCaution(200);
		renault5.setMarque("Renault");
		renault5.setModel("5");
		renault5.setNbPlaces(4);
		renault5.setPlaque("123 AB 34");
		renault5.setPuissanceChevaux(20);
		Voiture peugeot206 = new Voiture();
		peugeot206.setCouleur("bleu");
		peugeot206.setEnergie("escence");
		peugeot206.setPrixParJour(14.9);
		peugeot206.setCaution(500);
		peugeot206.setMarque("Peugeot");
		peugeot206.setModel("206");
		peugeot206.setNbPlaces(4);
		peugeot206.setPlaque("528 DD 30");
		peugeot206.setPuissanceChevaux(40);
		Voiture fordfocus = new Voiture();
		fordfocus.setCouleur("prune");
		fordfocus.setEnergie("escence");
		fordfocus.setPrixParJour(16);
		fordfocus.setCaution(600);
		fordfocus.setMarque("Ford");
		fordfocus.setModel("focus");
		fordfocus.setNbPlaces(4);
		fordfocus.setPlaque("DPA 40 EF");
		fordfocus.setPuissanceChevaux(75);
		ArrayList<Voiture> listeVoiture = new ArrayList<>();
		listeVoiture.add(renault5);
		listeVoiture.add(peugeot206);
		listeVoiture.add(fordfocus);
		request.getSession().setAttribute("Voitures", listeVoiture);
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp").forward(request, response);
	}
}
