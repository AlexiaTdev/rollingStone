<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RollingStone - Service de location de voiture</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>

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

<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>