<%-- 
    Document   : resultado
    Created on : 02/05/2017, 18:24:12
    Author     : Vinicius Ferreira Batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eXclusive - Novo Produto Cadastrado</title>
         <style>
            .success {
            background-color: hsla(120,100%,50%,0.3);
            font-size: 20px;
            border-left: 6px solid green;
            }
        </style>
    </head>
    <body>
        <h1>Novo Produto!</h1>
         <div class="success">
            <h3><c:out value="${sessionScope.novoProduto.nome}"/><p><strong>Cadastrado com Sucesso!</strong></p></h3>
        </div>
        <c:remove scope="session" var="novoProduto" />
        <a href="estoque">Voltar</a>
    </body>
</html>