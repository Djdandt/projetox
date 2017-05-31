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
        <title>Funcionários Cadastrados</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
        <!--    <link href="css/estilo.css" rel="stylesheet" />-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/estiloso.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
    </head>
    <body>
        <div class="logado">
            <c:import url="cabecalho.jsp" />
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2>Funcionários Cadastrados</h2>
                    <form method="post" action="AltDelProduto" class="form-inline">
                        <table class="table">
                            <tr>
                                <th>ID</th>
                                <th>Nome</th>
                                <th>E-mail</th>
                                <th>Telefone</th>
                                <th>Cargo</th>
                                <th>Login</th>
                            </tr>
                            <c:forEach items="${listaFuncionarios}" var="funcionario">
                                <tr>
                                    <td><c:out value="${funcionario.id}" /></td>
                                    <td><c:out value="${funcionario.nome}" /></td>
                                    <td><c:out value="${funcionario.email}" /></td>
                                    <td><c:out value="${funcionario.telefone}" /></td>
                                    <td><c:out value="${funcionario.cargo}" /></td>
                                    <td><c:out value="${funcionario.login}" /></td>
                                    
                                    <td id="alterar"><a href="#" class="btn btn-warning">Alterar</a></td>

                                    <td id="excluir"><a href="#" class="btn btn-danger">Excluir</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <c:import url="./rodape.jsp" />
    </body>
</html>
