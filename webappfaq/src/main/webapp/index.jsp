<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FAQ</title>
<style>




.title {
  border-radius: 1em;
  text-align: center; 
  margin: 7em;
  animation-name: title-animation;
  animation-duration: 1.5s; 
  animation-fill-mode: forwards;
  animation-timing-function: ease-in-out;
  text-align: center;
}

@keyframes title-animation {
  /* Le tue animazioni rimangono invariante */
  0% {
    background-color: #d8e9f4;
    border: solid 0.005em #1F406E;
    font-size: 0.4em;
    padding: 0.05em;
  } 
  50% {
    
    border: solid 0.1em #1F406E;
    font-size: 2em;
    padding: 0.25em;
  }
  100% {
    background-color: #F7F5E6; 
    border: solid 0.1em #1F406E;
    font-size: 4em;
    padding: 0.5em;
  }
}


</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<br>
<br>
<br>
<br>
<br>
<br>
	  <span class="title" style= "color:#1F406E">Programmazione</span>
</body>
</html>
