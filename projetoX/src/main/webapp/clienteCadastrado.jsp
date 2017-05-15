<%-- 
    Document   : clienteCadastrado
    Created on : 09/05/2017, 02:54:42
    Author     : Vinicius Ferreira Batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eXclusive - Novo Cliente Cadastrado</title>
        <style>
            .success {
            background-color: hsla(120,100%,50%,0.3);
            font-size: 20px;
            border-left: 6px solid green;
            }
        </style>
    </head>
    <body>
        <h1>Novo Cliente!</h1>
        <div class="success">
            <h3><c:out value="${sessionScope.novoCliente.nome}"/><p><strong>Cadastrado com Sucesso!</strong></p></h3>
        </div>
        <c:remove scope="session" var="novoCliente" />
        <a href="clientes">Voltar</a>
    </body>
</html>
