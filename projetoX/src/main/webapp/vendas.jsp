<%-- 
    Document   : vendas
    Created on : 13/05/2017, 12:13:46
    Author     : danilo.kwatanabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/teste.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet" />
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
        <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

        <script src="js/index.js"></script>

        <title>Vendas</title>
    </head>
    <body>

        <div class="logado">
            <c:import url="cabecalho.jsp" />
        </div>

        <div class="modal-dialog">
            <div class="modal-content">

                <form class="form-horizontal" action="vendas" method="post"  id="form_vendas">

                    <center>
                        <div class="register-block">
                            <h2 style="margin-bottom: 25px"> Venda de Produtos </h2>

                            <!-- Form Name -->

                            <table>

                                <!-- Text input-->

                                <div class="form-group"> 
                                    <label class="col-md-4 control-label">Nome do Produto</label>
                                    <div class="col-md-4 selectContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                            <select required name="nomeProduto" class="form-control selectpicker">
                                                <option value="" disabled selected>Selecione o produto</option>
                                                <c:forEach items="${listaVendas}" var="venda">
                                                    <c:out value="${Vendas.nomeProduto}" />
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group"> 
                                    <label class="col-md-4 control-label">Nome do cliente</label>
                                    <div class="col-md-4 selectContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                            <select required name="nomeCliente" class="form-control selectpicker">
                                                <option value="" disabled selected>Selecione o cliente</option>
                                                <c:forEach items="${listaVendas}" var="venda">
                                                    <c:out value="${Vendas.nomeCliente}" />
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Quantidade</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-sort"></i></span>
                                            <input name="quantidade" placeholder="Quantidade" class="form-control"  type="number">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" >Valor final</label> 
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
                                            <input name="valor" placeholder="Valor" class="form-control"  type="text">
                                        </div>
                                    </div>
                                </div>
                                <!-- Text input-->

                            </table>
                        </div>
                        <!-- Success message -->
                        <!--<div class="alert alert-success" role="alert" id="success_message">Sucesso <i class="glyphicon glyphicon-thumbs-up"></i> Cadastro Realizado com Sucesso !!.</div>-->

                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                                <input type="submit" id="btnCadastro" value="Cadastrar" />
                            </div>
                        </div>

                    </center>
                </form>
            </div>
        </div>
        <c:import url="./rodape.jsp" />
    </body>
</html>
