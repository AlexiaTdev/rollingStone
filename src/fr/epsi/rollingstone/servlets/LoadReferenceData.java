package fr.epsi.rollingstone.servlets;

import java.util.ArrayList;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import fr.epsi.rollingstone.beans.Voiture;

@WebListener
public class LoadReferenceData implements ServletContextListener {
  @Override
  public void contextInitialized(ServletContextEvent sce) {
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
		Voiture bmwz3 = new Voiture();
		bmwz3.setCouleur("gris");
		bmwz3.setEnergie("essence");
		bmwz3.setPrixParJour(56);
		bmwz3.setCaution(900);
		bmwz3.setMarque("BMW");
		bmwz3.setModel("z3");
		bmwz3.setNbPlaces(2);
		bmwz3.setPlaque("566 20 AT");
		bmwz3.setPuissanceChevaux(170);
		Voiture teslaX = new Voiture();
		teslaX.setCouleur("gris");
		teslaX.setEnergie("electrique");
		teslaX.setPrixParJour(50);
		teslaX.setCaution(900);
		teslaX.setMarque("Tesla");
		teslaX.setModel("modele X");
		teslaX.setNbPlaces(7);
		teslaX.setPlaque("655 21 AT");
		teslaX.setPuissanceChevaux(170);
		ArrayList<Voiture> listeVoiture = new ArrayList<>();
		listeVoiture.add(renault5);
		listeVoiture.add(peugeot206);
		listeVoiture.add(fordfocus);
		listeVoiture.add(bmwz3);
		listeVoiture.add(teslaX);
		sce.getServletContext().setAttribute("Voitures", listeVoiture);
  }
}
