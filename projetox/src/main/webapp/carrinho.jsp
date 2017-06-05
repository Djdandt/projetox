<%-- 
    Document   : carrinho
    Created on : 05/06/2017, 21:17:56
    Author     : danilo.kwatanabe
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
        <title>eXclusive - Carrinho</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
        <link href="css/estilos.css" rel="stylesheet" />
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/estiloso.css" rel="stylesheet">
    </head>
    <body>
        <div class="logado">
            <c:import url="./cabecalho.jsp" />
        </div>


        <table class="table" border="3">
            <tr>
                <th>ID</th>
                <th>Nome Cliente</th>
                <th>Nome Produto</th>
                <th>Valor</th>
            </tr>

            <c:forEach items="${listaVendas}" var="venda">
                <tr>
                    <td>${venda.id}</td>
                </tr>
            </c:forEach>    

            <c:forEach items="${listaCliente}" var="cliente">
                <tr>
                    <td>${cliente.nome}</td>
                </tr>
            </c:forEach>

            <c:forEach items="${listaProduto}" var="produto">
                <tr>
                    <td>${produto.nome}</td>
                    <td>${produto.valor}</td>
                </tr>
            </c:forEach>
        </table>

        <table class="table" border="3">
            <div id="ValorTotal">
                <th>VALOR TOTAL =</th>
            </div>
        </table>

        <form class="form-horizontal" action="menu" method="post"  id="form_vendas">
            <div id="venda">
                <input type="submit" value="Realizar Venda" />
            </div>
        </form>

        <c:import url="./rodape.jsp" />
    </body>
</html>
