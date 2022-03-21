<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>

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
		padding-left:30px;
	}
	</style>
	<meta charset="ISO-8859-1">
	<title>OrangeServices - ${empresa.nome}</title>
</head>
<body>
	<img height="60" width="60" style="float: left"src="https://icon-library.com/images/icon-orange/icon-orange-24.jpg">
	<h1 style="font-family:verdana; padding-left: 10px; padding-top: 18px">OrangeServices</h1>
	<p>A OrangeServices® lidera o registro Empresarial!</p>
	<h2 style="font-family:verdana">Alterar dados de Empresa</h2>
	<form action="${linkServletNovaEmpresa }" method="post">	
		Nome:
		</br> 
		<input type="text" name="nome" value="${empresa.nome}" />
		</br>
		Data de Abertura:
		</br>
		<input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>"/>
		</br>
		<input type="hidden" name="id" value="${empresa.id}"/>	
		<input type="submit" />
	</form>	
	<form action="/gerenciador/listaEmpresas">
		<button type="submit" value="Submit">Lista de Empresas</button>
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
	
</html>