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
    <title>Clientes Cadastrados</title>
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
	<h2>Clientes Cadastrados</h2>
        <a class="btn btn-default" style="float: right" href="menu">Voltar</a>
	<table class="table">
	  <tr>
	    <th>ID</th>
	    <th>Nome</th>
	    <th>Sobrenome</th>
	    <th>Data de Nascimento</th>
	    <th>CPF</th>
	    <th>E-mail</th>
	  </tr>
	  <c:forEach items="${listaClientes}" var="cliente">
	    <tr>
	      <td><c:out value="${cliente.id}" /></td>
	      <td><c:out value="${cliente.nome}" /></td>
	      <td><c:out value="${cliente.sobrenome}" /></td>
	      <td><c:out value="${cliente.dataNasc}" /></td>
	      <td><c:out value="${cliente.cpf}" /></td>
	      <td><c:out value="${cliente.email}" /></td>
              <td id="excluir"><a href="#" class="btn btn-danger">Excluir</a></td>
              <td id="alterar"><a href="#" class="btn btn-warning">Alterar</a></td>
         
	    </tr>
	  </c:forEach>
	</table>
	</div>
      </div>
    </div>
<!--    c:import url="./rodape.jsp -->
  </body>
</html>
