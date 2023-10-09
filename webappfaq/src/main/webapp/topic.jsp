<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Topic</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<style>

details h5 {
	font-size: 24px;
	color: #333; /* Colore del testo per domande */
	margin-bottom: 10px; /* Spazio tra domanda e risposta */
}

details h6 {
	font-size: 20px;
	color: #555; /* Colore del testo per risposte */
	margin-bottom: 20px; /* Spazio tra risposta e pulsanti di voto */
}

details summary {
	padding: 5px 5px; /* Spaziatura interna del riepilogo */
	border-radius: 10px; /* Bordi arrotondati */
}

details p {
	margin-bottom: 10px; /* Spazio tra i paragrafi */
}

.btn-group-toggle {
	margin-top: 10px;
	padding: 5px 5px;
}

details:not([open]) {
	min-height: 50px;
	background-color: #fff; /* Sfondo bianco */
	border: 1px solid #007bff; /* Bordo blu */
}

details p {
	color: #96999d;
	font-weight: 300;
}

details {
	width: 75%;
	min-height: 5px;
	max-width: 700px;
	padding: 20px 20px 20px 20px;
	margin: 0 auto;
	position: relative;
	font-size: 22px;
	border: 1px solid rgba(0, 0, 0, .1);
	border-radius: 15px;
	box-sizing: border-box;
	transition: all .3s;
}

details+details {
	margin-top: 20px;
}

details[open] {
	min-height: 50px;
	background-color: #f6f7f8;
	box-shadow: 2px 2px 20px rgba(0, 0, 0, .2);
}

details p {
	color: #96999d;
	font-weight: 300;
}

summary {
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-weight: 500;
	cursor: pointer;
	position: relative;
}

summary:focus {
	outline: none;
}

summary:focus::after {
	content: "";
	height: 100%;
	width: 100%;
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	box-shadow: 0 0 0 5px #1F406E;
}

summary::-webkit-details-marker {
	display: none
}

.control-icon {
	fill: rebeccapurple;
	transition: .3s ease;
	pointer-events: none;
}

.control-icon-close {
	display: none;
}

details[open] .control-icon-close {
	display: initial;
	transition: .3s ease;
}

details[open] .control-icon-expand {
	display: none;
}

h5, h6 {
	margin-bottom: 1rem;
}
</style>
</head>
<body>
	 <%@ include file="navbar.jsp"%>
    <div class="container-fluid">
    <div class="row mt-5">
        <div class="col-md-12">
                <div style="visibility: hidden; position: absolute; width: 0px; height: 0px;">
                    <svg xmlns="http://www.w3.org/2000/svg"></svg>
                </div>
                <c:forEach items="${listaFaq}" var="faq">
                    <details open>
                        <summary>
                            <h5>${faq.domanda}</h5>
                        </summary>
                        <h6>
                            <c:out value="${faq.risposta}" />
                        </h6>
                        <form method="post" action="voto" class="row g-3">
                            <input type="hidden" name="faqId" value="${faq.id}">
                            <input type="hidden" name="nomeArgomento" value="${nomeArgomento}">
                            <div class="btn-group-toggle" data-toggle="buttons">
                                <button id="likeButton" class="btn btn-primary" type="submit" name="action" value="like"
                                    <c:choose>
                                        <c:when test="${disableAction}">
                                            disabled
                                        </c:when>
                                    </c:choose>
                                >Like</button>

                                <button id="dislikeButton" class="btn btn-primary" type="submit" name="action" value="dislike"
                                    <c:choose>
                                        <c:when test="${disableAction}">
                                            disabled
                                        </c:when>
                                    </c:choose>
                                >Dislike</button>
                            </div>
                            <p class="mb-2">
                                Likes:
                                <c:out value="${faq.likes}" default="0" />
                            </p>
                            <p class="mb-0">
                                Dislikes:
                                <c:out value="${faq.dislikes}" default="0" />
                            </p>
                        </form>
                    </details>
                </c:forEach>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>