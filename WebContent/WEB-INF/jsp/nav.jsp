<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<ul class="nav">
  <li class="nav-item">
    <a class="nav-link" href="<c:url value="/accueil.jsp" />">Retourner à l'Accueil</a>
    <a class="nav-link" href="<c:url value="/gestionnaire.jsp" />">Acceder au gestionnaire</a>
    <a class="nav-link" href="<c:url value="/mecanicien.jsp" />">Acceder a la maintenance</a>
    <a class="nav-link" href="<c:url value="/responsable.jsp" />">Acceder a la vue responsable</a>
    <a class="nav-link" href="#">se deconnecter</a>
  </li>
 </ul>
</body>
</html>