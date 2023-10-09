<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ricerca</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<div class="container">
		<h3>Risultati della ricerca</h3>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Domanda</th>
					<th>Risposta</th>
				</tr>
			</thead>
			<c:forEach var="faq" items="${faqsTrovati}">
				<tbody>
					<tr>
						<td>${faq.domanda}</td>
						<td>${faq.risposta}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		<form method="post" action="voto" class="row g-3">
						<input type="hidden" name="faqId" value="${faq.id}"> <input
							type="hidden" name="nomeArgomento" value="${nomeArgomento}">
						<div class="container">
							<div class="row justify-content-center mt-5">
								<div class="col-md-6">
									<div class="card">
										<div class="card-header">
											<h5 class="mb-0">Hai trovato l'articolo utile?</h5>
										</div>
										<div class="card-body">
											<div class="btn-group-toggle" data-toggle="buttons">

												<button class="btn btn-primary" type="submit" name="action"
													value="like">Like</button>
												<button class="btn btn-primary" type="submit" name="action"
													value="dislike">Dislike</button>
											</div>

											<p class="mb-2">
												Likes:
												<c:out value="${faq.likes}" default="0" />
											</p>
											<p class="mb-0">
												Dislikes:
												<c:out value="${faq.dislikes}" default="0" />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
</body>
</html>
