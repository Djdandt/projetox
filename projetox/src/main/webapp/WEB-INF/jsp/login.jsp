<%-- 
    Document   : newjsplogin
    Created on : 25/04/2017, 20:28:07
    Author     : bruno.flima4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto X</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" />
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
<!--        <div>
            <p class="barNav">
                <a href="seu_link.html">Home</a>
                <a href="seu_link.html">Filiais</a>
                <a href="seu_link.html">Contato</a>
            </p>
        </div>-->
<nav>
  <ul class="menu">
		<li><a href="#"><b/>Home</a></li>
                <li><a href="#">Consultar</a>
                    <ul>
	                  <li><a href="#">Consultar Cliente</a></li>
                          <li><a href="#">Consultar Produto</a></li>
                          <li><a href="#">Consultar Funcionário</a></li>
                    </ul>   
                    </li>
		<li><a href="#">Relatórios</a></li>
	  		<li><a href="#">Cadastro</a>
	         	<ul>
	                  <li><a href="cadastrarCliente.jsp">Cliente</a></li>
	                  <li><a href="cadastrarFuncionario.jsp">Funcionário</a></li>
                          <li><a href="entrada.jsp">Produto</a></li>                    
	       		</ul>
			</li>
		<li><a href="#">Estoque</a></li>                
</ul>
</nav>

<section class="vh100" id="primeiro">
            <center>	
                
                <img class="logo2" src="imagens/logo.png" style="margin-top: 200px; width: 100%">
            </center>
</section>

   
        <c:import url="./rodape.jsp" />
    </body>
</html>
