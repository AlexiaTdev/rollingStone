<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mecanicien</title>
<link type="text/css" rel="stylesheet" href='css/bootstrap.min.css' />
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/2.2.1/mdb.min.css" rel="stylesheet"/>
</head>
<body>
<%@include file="nav.jsp" %>
<h1>Bienvenue sur la page du mecanicien !</h1>
<div class="row">
	<form method="POST" action="Mecanicien">
		<table class="table">
			<thead class="thead-dark">
	    		<tr>
	    			<th scope="col-1"></th>
	      			<th scope="col-1">Plaque</th>
	      			<th scope="col-1">Marque</th>
	      			<th scope="col-1">model</th>
	      			<th scope="col-1">couleur</th>
	      			<th scope="col-1">nbPlaces</th>
	      			<th scope="col-1">puissanceChevaux</th>
	      			<th scope="col-1">Type Carburant</th>
	      			<th scope="col-1">PrixJour</th>
	      			<th scope="col-1">Caution</th>
	    		</tr>
	  		</thead>
	  		<tbody>
				<c:forEach items="${Voitures}" var="voiture">
				<c:if test="${voiture.etat == -1}">
					<tr>
						<td>
							<div class="form-check form-switch">
  								<input class="form-check-input" type="checkbox" name="choix" id="choix[]" value="${voiture.plaque}"/>
							</div>
						</td>
						<td><input type="text" name="plaque[]" value="${voiture.plaque}" disabled/></td>
						<td><input type="text" name="marque[]" value="${voiture.marque}" disabled/></td>
						<td><input type="text" name="model[]" value="${voiture.model}" disabled/></td>
						<td><input type="text" name="couleur[]" value="${voiture.couleur}" disabled/></td>
						<td><input type="text" name="nbPlaces[]" value="${voiture.nbPlaces}" disabled/></td>
						<td><input type="text" name="puissanceChevaux[]" value="${voiture.puissanceChevaux}" disabled/></td>
						<td><input type="text" name="energie[]" value="${voiture.energie}" disabled/></td>
						<td><input type="text" name="prixParJour[]" value="${voiture.prixParJour}" disabled/></td>
						<td><input type="text" name="caution[]" value="${voiture.caution}" disabled/></td>
					</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<input type="submit" value="Valider"/>
	</form>
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</div>	
</body>
</html>