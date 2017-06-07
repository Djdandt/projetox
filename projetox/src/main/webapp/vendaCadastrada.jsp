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
        <style>
            .success {
                background-color: hsla(120,100%,50%,0.3);
                font-size: 20px;
                border-left: 6px solid green;
            }
        </style>
    </head>
        <div class="success">
            <h3><c:out value="${sessionScope.novoFuncionario.nome}"/><p><strong>Produto cadastrado no carrinho</strong></p></h3>
            <a href="vendas">Adicionar mais produtos</a>
        </div>
</html>
