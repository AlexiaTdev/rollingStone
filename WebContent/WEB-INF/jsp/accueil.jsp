<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RollingStone - Service de location de voiture</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>"/>
</head>
<body>

<form action="/action_page.php" id="loginform">
  <label for="userNameForm">Username:</label>
  <input type="text" id="userNameForm" name="userNameForm">
   <label for="passwordNameForm">Password:</label>
  <input type="text" id="passwordNameForm" name="passwordNameForm">
  <input type="submit">
</form>

<script src="<c:url value="/js/jquery-3.5.1.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
</body>

</html>