<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <img src="https://freesvg.org/img/polettix-stone-age-wheel-1.png" alt="stone age wheel" width="40" height="40">
 <a class="navbar-brand" href="#">RollingStone</a>
 
  <div class=" navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="<c:url value='/Accueil' />">Accueil</a>
      </li>
      <c:if test="${isGestionnaire}" var="stockResult" scope="request">
      	<li class="nav-item">
        	<a class="nav-link" href="<c:url value='/Gestionnaire' />">Gestionnaire</a>
      	</li>
      </c:if>
      <c:if test="${isMecanicien}" var="stockResult" scope="request">
      	<li class="nav-item">
        	<a class="nav-link" href="<c:url value='/Mecanicien' />">Maintenance</a>
      	</li>
      </c:if>
      <c:if test="${isResponsable}" var="stockResult" scope="request">
      	<li class="nav-item">
        	<a class="nav-link" href="<c:url value='/Responsable' />">Responsable</a>
      	</li>
      </c:if>
      <c:if test="${isConnected}" var="stockResult" scope="request">
      	<li class="nav-item">
        	<a class="nav-link" href="#">Se deconnecter</a>
      	</li>
      </c:if>
    </ul>
  </div>
</nav>
