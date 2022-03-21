<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.modelos.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://icon-library.com/images/icon-orange/icon-orange-24.jpg">
<style>
	body{
		background-color: #FFFFFF;
		zoom: 200%;
		line-height: 25px;
		font-family: courier;
		padding-left: 30px;
	}
</style>
<meta charset="ISO-8859-1">
<title>OrangeServices - Menu</title>
</head>
<body>
	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso!		
	</c:if>
	<img height="60" width="60" style="float: left"src="https://icon-library.com/images/icon-orange/icon-orange-24.jpg">
	<h1 style="font-family:verdana; padding-left: 10px; padding-top: 18px">OrangeServices</h1>
	<p>A OrangeServices® lidera o registro Empresarial!</p>
	<ul style="list-style-type:custom-counter-style;">
		<c:forEach items="${empresas}" var="empresa">			
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/> 
			<a href="/gerenciador/removeEmpresa?id=${empresa.id}">Remover</a> 
			<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">Editar</a></li>
		</c:forEach>
	</ul>	
	<form style="padding-left: 10px" action="/gerenciador/formNovaEmpresa.jsp">
		<button type="submit" value="Submit">Cadastrar Nova Empresa</button>
	</form>	
	<footer>
		<p>Tecnologias Utilizadas:</p>
		<img align="center" height="60" width="60" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg">
		<img align="center" height="60" width="60" src="https://cdn-icons-png.flaticon.com/512/29/29540.png">
		<img align="center" height="60" width="60" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg">
		<img align="center" height="60" width="60" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg">
		<img align="center" height="50" width="70" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Apache_Tomcat_logo.svg/1200px-Apache_Tomcat_logo.svg.png">
		<p>Em portfólio de Moisés Estevão, 2022.</p>
	</footer>
</body>
</html>