<%-- 
    Document   : estoque
    Created on : 02/05/2017, 18:26:35
    Author     : Vinicius Ferreira Batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <title>eXclusive - Relatório</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
<!--    <link href="css/estilos.css" rel="stylesheet" />-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/estiloso.css" rel="stylesheet">
  </head>
  <body>
<!--    c:import url="./cabecalho.jsp-->
    <div class="container">
      <div class="row">
	<div class="col-sm-12">
	<h2>Relatório</h2>
        <a class="btn btn-default" style="float: right" href="menu">Voltar</a>
	<table class="table">
	  <c:forEach items="${listaProdutos}" var="produto">
	    <tr>
                <td><center><strong><c:out value="Produto ${produto.nome} adicionado ao estoque com valor ${produto.valor} e quantidade ${produto.quantidade}" /></strong></center></td>
	    </tr>
	  </c:forEach>
	</table>
	</div>
      </div>
    </div>
<!--    c:import url="./rodape.jsp -->
  </body>
</html>
