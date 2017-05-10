<%-- 
    Document   : entrada
    Created on : 02/05/2017, 17:40:02
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
        <title>Entrada</title>
<!--            <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
            <link href="css/estilos.css" rel="stylesheet" />-->
            <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
            <script src="js/bootstrap.min.js" type="text/javascript"></script>

        <link rel="stylesheet" type="text/css" href="css/Prod.css"/>
        <!--        <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>-->
    </head>
    <body>
        <div class="produto">
            
            <!--      c import url="./cabecalho.jsp"  -->
            <h1>Cadastro de Produtos</h1>
            <div class="formulario">
                <form action="entrada" method="post">
                    <fieldset>

                        <fieldset class="grupo">
                            <div class="campo">
                                <c:if test="${erroNome}">
                                    <div class="erro">O nome é obrigatório</div>
                                </c:if>
                                <label for="txtnome">Nome</label>
                                <input type="text" id="txtnome" name="nome" required="required" style="width: 20em" value="" />
                            </div>
                            <div class="campo">
                                <label for="txtcodigo">Código</label>
                                <input type="text" id="txtcodigo" name="codigo" required="required" style="width: 20em" value="" />
                            </div>
                        </fieldset>	

                        <fieldset class="grupo">
                            <div class="campo">
                                <label for="txtvalor">Valor</label>
                                <input class="form-control" id="txtvalor" placeholder="Digite o Preço" style="width: 20em"  type="text" name="valor" required="required" onKeyPress="return(MascaraMoeda(this, '.', ',', event))"/>
                            </div>

                            <div class="campo">
                                <label for="txttipo">Tipo</label>
                                <select name="tipo" id="txttipo">
                                    <option value="">--</option>
                                    <option value="bolsa">Bolsa</option>
                                    <option value="relogio">Relógio</option>
                                    <option value="oculos">Óculos</option>
                                    <option value="bone">Boné</option>
                                </select>
                            </div>


                            <div class="campo">
                                <label for="txtquantidade">Quantidade</label>
                                <input type="number" id="txtquantidade" name="quantidade" required="required" style="width: 5em" value=""/>
                                <div>

                                    </fieldset>


                                    <div class="campo">
                                        <label for="txtdescricao">Descrição</label>
                                        <textarea rows="6" style="width: 41em" id="txtdescricao" name="descricao"></textarea>
                                    </div>


                                    <input class="botao submit" type="submit" value="Cadastrar" />

                                    </fieldset>
                                    </form>
                                </div>
                              
                            </div>
                            <c:import url="./rodape.jsp"/>
                            </body>
                            </html>