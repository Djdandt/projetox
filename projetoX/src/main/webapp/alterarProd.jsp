<%-- 
    Document   : entrada
    Created on : 02/05/2017, 17:40:02
    Author     : Vinicius Ferreira Batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="br.senac.tads.pi3.models.Produto" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/teste.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
        <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

        <script src="js/index.js"></script>


        <title>Alterar Produto</title>
    </head>
    <body>
        <%
            Produto prod = (Produto) request.getAttribute("prod");
        %>
        <div class="logado">
            <c:import url="cabecalho.jsp" />
        </div>

        <!--          <div class="modal fade" id="cadastrar" role="dialog">-->
        <div class="modal-dialog">
            <div class="modal-content">

                <form class="form-horizontal" action="alterarProd" method="post" id="form_cadastro">

                    <center>
                        <div class="register-block">
                            <h2 style="margin-bottom: 25px">Alterar Produto</h2>

                            <!-- Form Name -->

                            <table>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Nome</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                                            <input  name="nome" placeholder="Nome" class="form-control"  type="text" value="<%=prod.getNome()%>">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" >Código</label> 
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                            <input name="codigo" placeholder="Codigo" class="form-control"  type="text" value="<%=prod.getCodigo()%>" readonly="true">
                                        </div>
                                    </div>
                                </div> 

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label" >Valor</label> 
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
                                            <input name="valor" placeholder="Valor" class="form-control"  type="text" value="<%=prod.getValor()%>">
                                        </div>
                                    </div>
                                </div>
                                        
                                <div class="form-group"> 
                                    <label class="col-md-4 control-label">Tipo</label>
                                    <div class="col-md-4 selectContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                            <select name="tipo" class="form-control selectpicker">
                                                <option value="<%=prod.getTipo()%>" selected>${prod.tipo}</option>
                                                <option value="Bolsa">Bolsa</option>
                                                <option value="Relogio">Relógio</option>
                                                <option value="Oculos">Óculos</option>
                                                <option value="Bone">Boné</option>
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
                                            <input name="quantidade" placeholder="Quantidade" class="form-control" type="number" value="<%=prod.getQuantidade()%>">
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Descrição</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-edit"></i></span>
                                            <textarea rows="6" style="width: 15em; resize: none;" id="txtdescricao" name="descricao" value="<%=prod.getDescricao()%>"></textarea>
                                        </div>
                                    </div>
                                </div>


                            </table>
                        </div>
                        <!-- Success message -->
                        <!--<div class="alert alert-success" role="alert" id="success_message">Sucesso <i class="glyphicon glyphicon-thumbs-up"></i> Cadastro Realizado com Sucesso !!.</div>-->

                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-4">
                                <input type="submit" id="btnCadastro" value="Alterar" />
                            </div>
                        </div>

                    </center>
                </form>
            </div>
        </div>
        <!--        </div>-->

    </body>
</html>
