<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Errore</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container mt-5"> <!-- Aggiungi margin-top per spostare il div verso il basso -->
    <div class="row justify-content-center">
        <div class="col-sm-9">
            <div class="alert fade alert-simple alert-danger alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
                <i class="start-icon far fa-times-circle faa-pulse animated"></i>
                <strong class="font__weight-semibold">Opsss!</strong> Nessun risultato presente in linea con la tua ricerca!
            </div>
        </div>
    </div>
</div>

</body>
</html>