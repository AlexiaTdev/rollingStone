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

	<form method="POST" action="Gestionnaire">
		<table class="table">
			<thead class="thead-dark">
	    		<tr>
	    			<th scope="col-2"></th>
	      			<th scope="col-1">Plaque</th>
	      			<th scope="col-1">Marque</th>
	      			<th scope="col-1">model</th>
	      			<th scope="col-1">couleur</th>
	      			<th scope="col-1">nbPlaces</th>
	      			<th scope="col-1">puissanceChevaux</th>
	      			<th scope="col-1">Type Carburant</th>
	      			<th scope="col-1">PrixJour</th>
	      			<th scope="col-1">Etat</th>
	      			<th scope="col-1">Caution</th>
	    		</tr>
	  		</thead>
	  		<tbody>
				<c:forEach items="${Voitures}" var="voiture">
					<tr>
						<td><input type="radio" name="choix" id="choix[]" value="${voiture.plaque}"></td>
						<td><input type="text" name="plaque[]" value="${voiture.plaque}" disabled/></td>
						<td><input type="text" name="marque[]" value="${voiture.marque}" disabled/></td>
						<td><input type="text" name="model[]" value="${voiture.model}" disabled/></td>
						<td><input type="text" name="couleur[]" value="${voiture.couleur}" disabled/></td>
						<td><input type="text" name="nbPlaces[]" value="${voiture.nbPlaces}" disabled/></td>
						<td><input type="text" name="puissanceChevaux[]" value="${voiture.puissanceChevaux}" disabled/></td>
						<td><input type="text" name="energie[]" value="${voiture.energie}" disabled/></td>
						<td><input type="text" name="prixParJour[]" value="${voiture.prixParJour}" disabled/></td>
						<td>
							<c:choose>
								<c:when test="${voiture.etat==0}">
									<p>Disponible</p>
								</c:when>
								<c:when test="${voiture.etat==1}">
									<p>En location</p>
								</c:when>
								<c:when test="${voiture.etat==-1}">
									<p>A réparer</p>
								</c:when>
								<c:when test="${voiture.etat==-2}">
									<p>En réparation</p>
								</c:when>
								<c:when test="${voiture.etat==2}">
									<p>Réservée</p>
								</c:when>
								<c:otherwise>
									<p>Non disponible</p>
							</c:otherwise>
						</c:choose>
						</td>
							<input type="hidden" name="etat[]" value="${voiture.etat}" disabled/>
						<td><input type="text" name="caution[]" value="${voiture.caution}" disabled/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
		<label>Louer</label>
		<input type="radio" name="operation" id="operation[]" value="louer">
		<br>
		<label>Restituer</label>
		<input type="radio" name="operation" id="operation[]" value="restituer">
		<br>
		<label>Checkup</label>
		<input type="radio" name="operation" id="operation[]" value="checkup">
		<br>
		<label>Réserver</label>
		<input type="radio" name="operation" id="operation[]" value="reserver">
		<input type="submit" value="Valider"/>
	</form>

	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>