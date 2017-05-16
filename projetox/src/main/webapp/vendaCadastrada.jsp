<%-- 
    Document   : vendaCadastrada
    Created on : 15/05/2017, 22:02:34
    Author     : danilo.kwatanabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eXclusive - Nova Venda Cadastrada</title>
        <style>
            .success {
                background-color: hsla(120,100%,50%,0.3);
                font-size: 20px;
                border-left: 6px solid green;
            }
        </style>
    </head>
    <h1>Nova Venda</h1>
    <body>
        <div class="success">
            <h3><c:out value="${sessionScope.novoFuncionario.nome}"/><p><strong>Cadastrado com Sucesso!</strong></p></h3>
        </div>
    <c:remove scope="session" var="novaenda" />
    <a href="menu">Voltar</a>
</body>
</html>
