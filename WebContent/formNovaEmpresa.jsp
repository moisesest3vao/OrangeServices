<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="https://icon-library.com/images/icon-orange/icon-orange-24.jpg">
	<style>
	body{
		background-color: #FFFFFF;
		zoom: 200%;
		line-height: 25px;
		padding-left: 30px;
		font-family: courier;
	}
	</style>
	<meta charset="ISO-8859-1">
	<title>OrangeServices - Cadastro</title>
</head>
<body>
<img height="60" width="60" style="float: left"src="https://icon-library.com/images/icon-orange/icon-orange-24.jpg">
	<h1 style="font-family:verdana; padding-left: 10px; padding-top: 18px">OrangeServices</h1>
	<p>A OrangeServices® lidera o registro Empresarial!</p>
	<h2 style="font-family:verdana">Cadastro de Empresa</h2>
	<form action="${linkServletNovaEmpresa }" method="post">	
		Nome: 
		</br>
		<input type="text" name="nome"  />
		</br>
		Fundação:
		 </br>
		<input type="text" name="data"  />	
		</br>
		<input type="submit"/>
		</br>		
	</form>
	<form action="/gerenciador/listaEmpresas">
		<button type="submit" value="Submit">Lista de Empresas</button>
	</form>	
	<footer>
		<p>Tecnologias Utilizadas:</p>
		<img height="60" width="60" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg">
		<img height="60" width="60" src="https://cdn-icons-png.flaticon.com/512/29/29540.png">
		<img height="60" width="60" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg">
		<img height="60" width="60" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg">
		<img height="50" width="70" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Apache_Tomcat_logo.svg/1200px-Apache_Tomcat_logo.svg.png">
		<p>Em portfólio de Moisés Estevão, 2022.</p>
	</footer>	
</body>
</html>