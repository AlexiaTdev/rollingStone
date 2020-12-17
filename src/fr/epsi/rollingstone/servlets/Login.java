package fr.epsi.rollingstone.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Login")
public class Login extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getRemoteUser();
		request.getSession().setAttribute("username", username);
		if(request.isUserInRole("Responsable")){
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/responsable.jsp").forward(request, response);
		}else if(request.isUserInRole("Gestionnaire")){
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/gestionnaire.jsp").forward(request, response);
		}else if(request.isUserInRole("Mecanicien")){
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mecanicien.jsp").forward(request, response);
		}else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp").forward(request, response);
		}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getRemoteUser();
		request.getSession().setAttribute("username", username);
		if(request.isUserInRole("Responsable")){
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/responsable.jsp").forward(request, response);
		}else if(request.isUserInRole("Gestionnaire")){
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/gestionnaire.jsp").forward(request, response);
		}else if(request.isUserInRole("Mecanicien")){
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mecanicien.jsp").forward(request, response);
		}else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp").forward(request, response);
		}
	}
}
