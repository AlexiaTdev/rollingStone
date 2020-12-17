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
					<td><input type="text" name="plaque[]" value="${voiture.plaque}"/></td>
					<td><input type="text" name="marque[]" value="${voiture.marque}"/></td>
					<td><input type="text" name="model[]" value="${voiture.model}"/></td>
					<td><input type="text" name="couleur[]" value="${voiture.couleur}"/></td>
					<td><input type="text" name="nbPlaces[]" value="${voiture.nbPlaces}"/></td>
					<td><input type="text" name="puissanceChevaux[]" value="${voiture.puissanceChevaux}"/></td>
					<td><input type="text" name="energie[]" value="${voiture.energie}"/></td>
					<td><input type="text" name="prixParJour[]" value="${voiture.prixParJour}"/></td>
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
						<input type="hidden" name="etat[]" value="${voiture.etat}"/>
					<td><input type="text" name="caution[]" value="${voiture.caution}"/></td>
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