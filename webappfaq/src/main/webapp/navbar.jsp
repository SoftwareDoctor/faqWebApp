<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FAQ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background-color: #3D6B9B;
}

.topnav {
	overflow: hidden;
	background-color: #1F406E;
}

.topnav a {
	float: left;
	display: block;
	color: #78B4E5;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #78B4E5;
	color: #1F406E;
}

.topnav .icon {
	display: none;
}

@media screen and (max-width: 600px) {
	.topnav a:not(:first-child) {
		display: none;
	}
	.topnav a.icon {
		float: right;
		display: block;
	}
}

@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
}

	.form-control {
		width:70%; 
		background-color: #78B4E5; 
	}

.btn-outline-success .bi-search {
    fill: #78B4E5; 
}



.bi bi-search {
fill: #78B4E5; 
}


.btn-outline-success:hover {
   color: #1F406E; 
   background-color: #1F406E;
   border-color: #78B4E5; 
}



</style>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<a class="active" href="index.jsp"> <img
			src="https://i.postimg.cc/RV1hXyvm/avatar-removebg-preview.png"
			alt="Logo" width="30" height="24"
			class="d-inline-block align-text-top">Software Doctor
		</a>
		<a href="faq?id=1&nomeArgomento=Java">Java</a> <a href="faq?id=2&nomeArgomento=SQL">SQL</a> <a
			href="faq?id=3&nomeArgomento=Springboot">Springboot</a> <a href="javascript:void(0);"
			class="icon" onclick="myFunction()"> <i class="fa fa-bars"></i>
		</a>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<form class="d-flex ms-auto order-5" role="search" method="get" action="ricerca">
			<input class="form-control me-2 mt-2" type="search" placeholder="Cerca"
				aria-label="Search" name="q">
			<button class="btn btn-outline-success mt-2" type="submit" style= "border-color:#1F406E">
    <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26"
        fill="currentColor" class="bi bi-search" viewBox="0 0 15 15">
        <path
            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
    </svg>
</button>
		</form>
		</div>
	</div>

	<div style="padding-left: 16px"></div>

	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
