<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Responsable</title>
<link type="text/css" rel="stylesheet" href='css/bootstrap.min.css' />
</head>
<body>
<%@include file="nav.jsp" %>

<h1>Bienvenue sur la page du gestionnaire !</h1>

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <canvas id="chLine"></canvas>
                </div>
            </div>
        </div>
	</div>
</div>
<div class="container">	
	<div class="row">
        <div class="col-md-4 py-1">
        	<canvas id="chDonut1"></canvas>
        </div>
        <div class="col-md-4 py-1">
        	<canvas id="chDonut2"></canvas>
        </div>
        <div class="col-md-4 py-1">
        	<canvas id="chDonut3"></canvas>
        </div>
     </div>
</div>
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
						<td><input type="text" name="caution[]" value="${voiture.caution}" disabled/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>


<script src="js/chartjs.js"></script>
<script src="js/responsable.js"></script>
</body>
</html>