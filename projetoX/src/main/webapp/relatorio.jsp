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
        <title>eXclusive - Relatório</title>
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
    <center>
        <legend>Gerar relatório</legend>
        <form method="post" action="GeraRelatorioServlet" class="form-inline">
            <div class="form-group">
                <div class="input-group" style="width:350px;">
                    <label class="input-group-addon" style="width:110px;"for="tipoRelatorio">Tipo:</label>
                    <select name="tipoRelatorio" class="form-control">
                        <option value="listarProdutos" selected="selected">Listar Produtos</option>
                        <option value="listarFuncionarios">Listar Funcionários</option>
                        <option value="listarClientes">Listar Clientes</option>                      
                    </select>
                </div>
                <a class="btn btn-info" style="float: right" href="menu">Voltar</a>
                <input type="submit" value='Pesquisar'class="btn btn-info"/><br/>

            </div>
            <hr style="height:1px; background-color:#E8E8E8;">
            <p>${relatorio}</p>
            <c:if test = "${relatorio == 'Relatorio de produtos cadastrados!!'}">
                <table class="table" border="3">
                    <tr>
                        <th>ID</th>
                        <th>NOME</th>
                        <th>CODIGO</th>
                        <th>TIPO</th>
                        <th>QUANTIDADE</th>
                        <th>DESCRICAO</th>
                        <th>VALOR</th>
                    </tr>

                    <c:forEach items="${relatorioprodutos}" var="rel">
                        <tr>
                            <td>${rel.id}</td>
                            <td>${rel.nome}</td>
                            <td>${rel.codigo}</td>
                            <td>${rel.tipo}</td>
                            <td>${rel.quantidade}</td>
                            <td>${rel.descricao}</td>
                            <td>${rel.valor}</td>
                        </tr>
                    </c:forEach>                                                           
                </table>                                      
            </c:if>
            <c:if test = "${relatorio == 'Relatorio de funcionarios cadastrados!!'}">
                <table class="table" border="3">
                    <tr>
                        <th>FUNCIONÁRIO</th>
                        <th>NOME</th>
                        <th>E-MAIL</th>
                        <th>TELEFONE</th>
                        <th>CARGO</th>
                    </tr>

                    <c:forEach items="${relatoriofuncionarios}" var="rel">
                        <tr>
                            <td>${rel.id}</td>
                            <td>${rel.nome}</td>
                            <td>${rel.email}</td>
                            <td>${rel.telefone}</td>
                            <td>${rel.cargo}</td>
                        </tr>
                    </c:forEach>                                                           
                </table>                                      
            </c:if>
            <c:if test = "${relatorio == 'Relatorio de clientes cadastrados!!'}">
                <table class="table" border="3">
                    <tr>
                        <th>ID</th>
                        <th>NOME</th>
                        <th>SOBRENOME</th>
                        <th>NASCIMENTO</th>
                        <th>CPF</th>
                        <th>E-MAIL</th>
                    </tr>

                    <c:forEach items="${relatorioclientes}" var="rel">
                        <tr>
                            <td>${rel.id}</td>
                            <td>${rel.nome}</td>
                            <td>${rel.sobrenome}</td>
                            <td>${rel.dataNasc}</td>
                            <td>${rel.cpf}</td>
                            <td>${rel.email}</td>
                        </tr>
                    </c:forEach>                                                           
                </table>                                      
            </c:if>
        </form>
    </center>
    <c:import url="./rodape.jsp" />
</body>
</html>
