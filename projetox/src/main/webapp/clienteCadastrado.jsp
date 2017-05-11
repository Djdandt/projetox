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
    </head>
    <body>
        <h1>Um novo cliente foi cadastrado!</h1>
        <h1><c:out value="${sessionScope.novoCliente.nome}" /></h1>
        <p><c:out value="${sessionScope.novoCliente.sobrenome}" /></p>
        <p><c:out value="${sessionScope.novoCliente.dataNasc}" /></p>
        <p><c:out value="${sessionScope.novoCliente.cpf}" /></p>
        <p><c:out value="${sessionScope.novoCliente.email}" /></p>
        <p><c:out value="${sessionScope.novoCliente.telefone}" /></p>
        <p><c:out value="${sessionScope.novoCliente.estado}" /></p>
        <p><c:out value="${sessionScope.novoCliente.cidade}" /></p>
        <p><c:out value="${sessionScope.novoCliente.endereco}" /></p>
        <p><c:out value="${sessionScope.novoCliente.cep}" /></p>
        <p><c:out value="${sessionScope.novoCliente.numCasa}" /></p>
        <p><c:out value="${sessionScope.novoCliente.genero}" /></p>
        <c:remove scope="session" var="novoCliente" />
        <a href="clientes">Voltar</a>
    </body>
</html>
