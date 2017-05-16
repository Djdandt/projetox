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
        <title>Estoque de Produtos</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <!--        <link href="css/login.css" rel="stylesheet" />-->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/teste.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet" />
        <link href="css/consultas.css" rel="stylesheet" />
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>


    </head>
    <div class="logado">
        <c:import url="cabecalho.jsp" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2>Produtos Cadastrados</h2>
                <form method="post" action="AltDelProduto" class="form-inline">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Codigo</th>
                            <th>Tipo</th>
                            <th>Qtde</th>
                            <th>Valor</th>
                        </tr>
                        <c:forEach items="${listaProdutos}" var="produto">
                            <tr>

                                <td><c:out value="${produto.id}" /></td>
                                <td><c:out value="${produto.nome}" /></td>
                                <td><c:out value="${produto.codigo}" /></td>
                                <td><c:out value="${produto.tipo}" /></td>
                                <td><c:out value="${produto.quantidade}" /></td>
                                <td><c:out value="${produto.valor}" /></td>

                                <td id="alterar"><input type="submit" name="alterar" value="Alterar" class="btn btn-warning" onclick="value =${produto.id}"></td>
                                <td id="excluir"><input type="submit" name="excluir" value="Excluir" class="btn btn-danger" onclick="value =${produto.id};"></td>
                                <td id="excluir"><input type="hidden" name="nome" value="${produto.nome}" class="btn btn-danger"></td>
                                <td id="excluir"><input type="hidden" name="quantidade" value="${produto.quantidade}" class="btn btn-danger"></td>
                                <td id="excluir"><input type="hidden" name="valor" value="${produto.valor}" class="btn btn-danger"></td>
                                <td id="excluir"><input type="hidden" name="funcio" value="${sessionScope.usuario.nomeCompleto}" class="btn btn-danger"></td>


                            </tr>
                        </c:forEach>
                    </table>
                </form>
            </div>
        </div>
    </div>
<!--    <script>
        function clicked(e)
        {
            if (!confirm('Você tem certeza que deseja excluir o produto?'))
                e.preventDefault();
        }
    </script>-->

    <c:import url="./rodape.jsp" />

</body>
</html>
