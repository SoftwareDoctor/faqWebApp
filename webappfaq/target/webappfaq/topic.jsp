<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Topic</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h4>
			Ad ogni domanda la sua risposta
			</h4>
	</div>
	<br>
	<div class="row">
		<div class="col-lg-6">
			<ul>
    <c:forEach items="${listaFaq}" var="faq">
        <li>Domanda: ${faq.domanda}<br> 
            Risposta: ${faq.risposta}
        </li>
    </c:forEach>
</ul>

			<div class="form-check">
				<input class="form-check-input" type="radio" name="consensoDissenso"
					id="consenso" value="consenso"> <label
					class="form-check-label" for="consenso"> Utile </label>
			</div>
			<form>
				<div class="form-check">
					<input class="form-check-input" type="radio"
						name="consensoDissenso" id="dissenso" value="dissenso"> <label
						class="form-check-label" for="dissenso"> Non utile </label>
				</div>

				<button type="submit" class="btn btn-primary">Invia</button>
		</div>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>