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
    </head>
    <body>
        <h1>Um novo produto foi cadastrado!</h1>
        <h1><c:out value="${sessionScope.novoProduto.nome}" /></h1>
        <p><c:out value="${sessionScope.novoProduto.codigo}" /></p>
        <p><c:out value="${sessionScope.novoProduto.tipo}" /></p>
        <p><c:out value="${sessionScope.novoProduto.quantidade}" /></p>
        <p><c:out value="${sessionScope.novoProduto.descricao}" /></p>
        <p><c:out value="${sessionScope.novoProduto.valor}" /></p>
        <c:remove scope="session" var="novoProduto" />
        <a href="estoque">Voltar</a>
    </body>
</html>