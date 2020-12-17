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
		request.getSession().setAttribute("isGestionnaire", request.isUserInRole("gestionnaire"));
		request.getSession().setAttribute("isMecanicien", request.isUserInRole("mecanicien"));
		request.getSession().setAttribute("isResponsable", request.isUserInRole("responsable"));
		request.getSession().setAttribute("isConnected", !(request.getRemoteUser() != null && "".equals(request.getRemoteUser())));
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("isGestionnaire", request.isUserInRole("gestionnaire"));
		request.getSession().setAttribute("isMecanicien", request.isUserInRole("mecanicien"));
		request.getSession().setAttribute("isResponsable", request.isUserInRole("responsable"));
		request.getSession().setAttribute("isConnected", true);
		this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp").forward(request, response);
	}
}