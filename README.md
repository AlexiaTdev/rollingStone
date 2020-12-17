"# rollingStone" 

Le projet git RollingStone est issu d'un projet de type "dynamic web projet". Les fichiers doivent être incorporés dans un projet de type "dynamic web projet". Pour le visualiser, utiliser un serveur web.

*******************************
Fichier tomcat-users pour récupérer les rôles :


<?xml version="1.0" encoding="UTF-8"?>

<tomcat-users>
	<role rolename="gestionnaire"/>
  	<role rolename="responsable"/>
  	<role rolename="mecanicien"/>
  	
  	<user username="gestio" password="gestio" roles="gestionnaire"/>
  	<user username="mecano" password="mecano" roles="mecanicien"/>
  	<user username="respon" password="respon" roles="responsable"/>
  	<user username="admin" password="admin" roles="gestionnaire,responsable,mecanicien"/>
</tomcat-users>
