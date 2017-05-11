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
        <title>eXclusive - Novo Funcionário Cadastrado</title>
    </head>
    <body>
        <h1>Um novo funcionário foi cadastrado!</h1>
        <h1><c:out value="${sessionScope.novoFuncionario.nome}" /></h1>
        <p><c:out value="${sessionScope.novoFuncionario.sobrenome}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.dataNasc}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.cpf}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.email}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.telefone}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.estado}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.cidade}" /></p>
        <p><c:out value="${sessionScope.novoFuncionario.cargo}" /></p>
        <c:remove scope="session" var="novoFuncionario" />
        <a href="funcionarios">Voltar</a>
    </body>
</html>