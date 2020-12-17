<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RollingStone - Service de location de voiture</title>

</head>
<body>

<div class="welcome">
<img src="/ressources/stoneAgeWheel.svg" alt="stone age wheel" width="500" height="600">
<h1>Bienvenue sur Rolling Stone !</h1>
</div>
<%@include file="nav.jsp" %>


<div class="container">
<form method="post" action="j_security_check">
  <label for="j_username">Username:</label>
  <input type="text" class="form-control" id="userNameForm" name="j_username">
  <label for="j_password">Password:</label>
  <input type="password" class="form-control" id="passwordNameForm" name="j_password">
  <input type="submit">
</form>
</div>

<script src="<c:url value="/js/jquery-3.5.1.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
</body>

</html>