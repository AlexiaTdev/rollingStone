<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestionnaire</title>
<link type="text/css" rel="stylesheet" href='css/bootstrap.min.css' />
</head>
<body>
<%@include file="nav.jsp" %>

	<h1>Bienvenue sur la page du gestionnaire !</h1>
	
<form>
	<table class="table">
		<thead class="thead-dark">
    		<tr>
    			<th scope="col"></th>
      			<th scope="col">Plaque</th>
      			<th scope="col">essai</th>
      			<th scope="col">Last</th>
      			<th scope="col">Handle</th>
      			<th scope="col">#</th>
      			<th scope="col">First</th>
      			<th scope="col">Type Carburant</th>
      			<th scope="col">PrixJour</th>
      			<th scope="col">Etat</th>
      			<th scope="col">Caution</th>
    		</tr>
  		</thead>
  		<tbody>
			<c:forEach items="${Voitures}" var="voiture">
				<tr>
					<td><input type="radio" name="choix" id="${voiture.plaque}"></td>
					<td><c:out value="${voiture.plaque}"/></td>
					<td><c:out value="${voiture.marque}"/></td>
					<td><c:out value="${voiture.model}"/></td>
					<td><c:out value="${voiture.couleur}"/></td>
					<td><c:out value="${voiture.nbPlaces}"/></td>
					<td><c:out value="${voiture.puissanceChevaux}"/></td>
					<td><c:out value="${voiture.energie}"/></td>
					<td><c:out value="${voiture.prixParJour}"/></td>
					<c:choose>
						<c:when test="${voiture.etat==0}">
							<td>Disponible</td>
						</c:when>
						<c:when test="${voiture.etat==1}">
							<td>En location</td>
						</c:when>
						<c:when test="${voiture.etat==-1}">
							<td>A réparer</td>
						</c:when>
						<c:when test="${voiture.etat==-2}">
							<td>En réparation</td>
						</c:when>
						<c:when test="${voiture.etat==2}">
							<td>Réservée</td>
						</c:when>
						<c:otherwise>
							<td>Non disponible</td>
						</c:otherwise>
					</c:choose>
					<td><c:out value="${voiture.caution}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<button type="submit" method="post" action="/Gestionnaire" value="louer">Louer voiture</button>
	<button type="submit" method="post" action="/Gestionnaire" value="restituer">restituer voiture</button>
	<button type="submit" method="post" action="/Gestionnaire" value="checkup">demander checkUp</button>
</form>

	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>