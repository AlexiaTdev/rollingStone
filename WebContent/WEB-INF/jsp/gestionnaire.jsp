<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestionnaire</title>
</head>
<body>
<%@include file="nav.jsp" %>

	<h1>Bienvenue sur la page du gestionnaire !</h1>
	
	<ul class="list-group">
		<c:forEach items="${Voitures}" var="voiture">
			<tr>
				<td><c:out value="${voiture.plaque}"/></td>
				<td><c:out value="${voiture.marque}"/></td>
				<td><c:out value="${voiture.model}"/></td>
				<td><c:out value="${voiture.couleur}"/></td>
				<td><c:out value="${voiture.nbPlaces}"/></td>
				<td><c:out value="${voiture.puissanceChevaux}"/></td>
				<td><c:out value="${voiture.energie}"/></td>
				<td><c:out value="${voiture.prixParJour}"/></td>
				<td><c:out value="${voiture.etat}"/></td>
				<td><c:out value="${voiture.caution}"/></td>
			</tr>
		</c:forEach>
	</ul>
	<button id="louer">Louer voiture</button>
	<button id="restituer">restituer voiture</button>
	<button id="checkup">demander checkUp</button>
</body>
</html>