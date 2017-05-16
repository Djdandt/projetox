<%-- 
    Document   : home
    Created on : 29/04/2017, 01:55:06
    Author     : Vinicius Ferreira Batista
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

        <script src="js/index.js"></script>



        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" type="image/png" href="imagens/x4.png"/>

        <title>eXclusive - Home</title>

        <link href="css/estilo.css" rel="stylesheet">
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/teste.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/scrolling-nav.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

    <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

        <!-- Navigation -->
        <nav id="mainNav" class="navbar1 navbar-fixed-top navbar-custom navbar-inverse">
            <div class="container">

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="#page-top"><img id="rolagem" src="imagens/ex_logo.png" style="margin-top:-145px;margin-left: -190px;width: 600px"></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <c:if test="${not empty sessionScope.usuario}">
                              <li id="users" data-toggle="modal" class="user"><font size="1" color="white" style="float: left; margin-right: 100%; margin-top: 10px;">
                                  <c:out value="Usuario: ${sessionScope.usuario.nomeCompleto}"/></font></li>
                            <!--                            <font size="1" color="white" style="padding-left:50px;"><a href="logout">Sair</a></font>-->

                        </c:if>

                        <li id="entrar" data-toggle="modal" data-target="#login" style="background: rgba(255,255,255,0.2); border-radius: 10px;">

                            <c:choose>
                                <c:when test="${not empty sessionScope.usuario}">

                                    <a href="menu"><font color="white">MENU</font></a>
                                <li id="sair" data-toggle="modal" data-target="#sair" class="logout">
                                    <a href="logout"><font color="white">SAIR</font></a>
                                </li>

                            </c:when>
                            <c:otherwise>
                                <a href="#"><font color="white">ENTRAR</font></a>
                                </c:otherwise>
                            </c:choose>

                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        <!-- Intro Section -->

        <section class="vh100" id="primeiro" style="margin-top: -70px;">
            <center>	
                <a href="#page-top"><img class="logo" id="logo" src="imagens/ex_logo.png" style="margin-top: 70px;width: 1100px"></a>
            </center>
            <a class="page-scroll" href="#segundo"><span class="glyphicon glyphicon-chevron-down" style="font-size: 30px;color: white;position: relative;top: -100px"></span></a>
        </section>

        <!-- About Section -->
        <section class="vh100L" id="segundo">
            <blockquote style="width: 65%;border-left: 6px solid #222">
                <font size="6"  style="color: #222; font-weight: bold">Sobre o sistema</font>
                <p><font size="5" style="color: white;">Com o mundo tecnológico avançando cada vez mais, eXclusive oferece um sistema 
                    para facilitar o controle sobre os funcionários, produtos e relatórios em diversas filiais espalhadas pelo
                    Brasil.</font></p>     
            </blockquote>
            <a class="page-scroll" href="#terceiro"><span class="glyphicon glyphicon-chevron-down" style="font-size: 30px;color: white;position: relative;top: 120px"></span></a>   

        </section>

        <section class="vh80">

        </section>

        <!-- Services Section -->
        <section class="vh100L" id="terceiro">
            <blockquote style="width: 65%;border-left: 6px solid #222">
                <font size="6"  style="color: #222; font-weight: bold">Melhorias em seus negócios!</font>
                <p><font size="5" style="color: white;">Com o eXclusive, o administrador terá melhor controle sobre os negócios de sua empresa, facilitando a tomada de decisões. </font></p>     
            </blockquote>
            <a class="page-scroll" href="#quarto"><span class="glyphicon glyphicon-chevron-down" style="font-size: 30px;color: white;position: relative;top: 120px"></span></a>	
        </section>

        <section class="vh80">

        </section>

        <!--  Section -->

        <section class="vh100R" id="quarto">
            <blockquote style="width: 65%;border-left: 6px solid #222">
                <font size="6" style="color: #222;font-weight: bold"> Produtos</font>
                <p><font size="5" style="color: white">A loja eXclusive atenderá a área de varejo
                    especificamente com vendas de acessórios em geral. Relógios, bolsas,
                    bonés, chapéus, óculos, mochilas, pulseiras, entre outros. </font></p>
            </blockquote>
            <a class="page-scroll" href="#quinto"><span class="glyphicon glyphicon-chevron-down" style="font-size: 30px;color: white;position: relative;top: 100px"></span></a>	

        </section>

        <section class="vh80">

        </section>

        <section class="vh100L" id="quinto">
            <blockquote style="width: 65%;border-left: 6px solid #222">
                <font size="6"  style="color: #222; font-weight: bold">Segurança</font>
                <p><font size="5" style="color: white;">O sistema irá garantir a segurança e integridade de todos os dados.</font></p>     
            </blockquote>
            <a class="page-scroll" href="#sexto"><span class="glyphicon glyphicon-chevron-down" style="font-size: 30px;color: white;position: relative;top: 100px"></span></a> 
        </section>

        <section class="vh80">

        </section>

        <section class="vh100R" id="sexto">
            <blockquote style="width: 65%;border-left: 6px solid #222">
                <font size="6"  style="color:  #222; font-weight: bold">Contato</font>
                <p><font size="5" style="color: white;">Para tirar dúvidas e dar sugestões, entre em contato com <b>admExclusive@exclusive.br</b> </font></p>     
            </blockquote>
        </section>


        <div class="modal fade" id="login" role="dialog">
            <div class="modal-dialog">
                <!--   Modal content -->
                <div class="modal-content">		

                    <form id='entrar' name='entrar' action="menu" method="POST">
                        <center>
                            <div class="login-block">
                                <table>
                                    <tr><td><h5>Username: </h5></td></tr><tr><td><input type="text" id="usuario" name="usuario" size = "50" placeholder="Digite seu usuário" maxlength='40'></td></tr>
                                    <tr><td><h5>Senha: </h5></td></tr><tr><td><input type="password" id="senha" name="senha" size = "50" placeholder="Digite sua senha" maxlength='20'></td></tr>
                                    <tr> </tr>
                                    <tr><td><a href="" data-toggle="modal" data-target="#esqueceu"><h5>Esqueceu a senha?</h5></a></td></tr>
                                </table>
                            </div>	
                            <input type="submit" value="Entrar" id="btnEntrar" />
                        </center>
                    </form>
                </div>




            </div>
        </div>


        <div class="modal fade" id="esqueceu" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content -->
                <div class="modal-content">
                    <div class="modal-header">					
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Esqueceu a senha</h4>
                    </div>
                    <div class="modal-body">
                        <form id='entrar' name='entrar' action="#" method="POST">
                            <center>
                                <table>
                                    <tr><td><h5>Email: </h5></td></tr><tr><td><input type="text" id="email" name="email" size = "50" placeholder="Digite seu email para recuperar a senha" maxlength='40'></td></tr>
                                    <tr> </tr>
                                </table>
                                </div>				
                                <div class="modal-footer"><center>
                                        <button type="submit" class="btn btn-default">Entrar</button>
                                        </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>			
                                </div> 
                                </div>
                                </div>
                                </div>



                                <a class="page-scroll" href="#primeiro" style="background: black;" onClick="#primeiro">
                                    <button class="page-scroll" id='toTop' onClick="#primeiro">
                                        <font color=white><span class="glyphicon glyphicon-chevron-up"></span><h5>INICIO</h5></font>
                                    </button>
                                </a>
                                </div>
                                <!-- jQuery -->
                                <script src="js/jquery.js"></script>

                                <!-- Bootstrap Core JavaScript -->
                                <script src="js/bootstrap.min.js"></script>

                                <!-- Scrolling Nav JavaScript -->
                                <script src="js/jquery.easing.min.js"></script>
                                <script src="js/scrolling-nav.js"></script>
                                </body>



                                <c:import url="./rodape.jsp" />
                                </html>
