<%-- 
    Document   : menuFunc
    Created on : 29/04/2017, 22:35:26
    Author     : Vinicius Ferreira Batista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>eXclusive - Funcionario</title>

        <!-- Bootstrap Core CSS -->
        <!-- Custom CSS -->
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/menuF.css" rel="stylesheet">
        <!-- Custom CSS -->

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>


        <div id="wrapper">

            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="#">
                            eXclusive
                        </a>
                    </li>
                    <li>
                        <a href="#">Dashboard</a>
                    </li>
                    <li>
                        <a href="#">Shortcuts</a>
                    </li>
                    <li>
                        <a href="#">Overview</a>
                    </li>
                    <li>
                        <a href="#">Events</a>
                    </li>
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>Menu do Funcionário</h1>
                            <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- /.container -->
        <div id="conteudo">
            <!--        <h1> Menu do Funcionário </h1>-->
            <a target="_blank" href="paris.jpg" id="cproduto"> 
                <img src="imagens/pack.png" alt="cproduto" style="width:100px">
            </a>
            <a target="_blank" href="paris.jpg" id="adduser">
                <img src="imagens/adduser.png" alt="adduser" style="width:100px">
            </a> 
            <a target="_blank" href="paris.jpg" id="cproduto">
                <img src="imagens/cproduto.png" alt="cproduto" style="width:100px">
            </a>
            <a target="_blank" href="paris.jpg" id="cuser">
                <img src="imagens/cuser2.png" alt="cuser" style="width:100px">
            </a>
            <a target="_blank" href="paris.jpg" id="estoque">
                <img src="imagens/estoque.png" alt="estoque" style="width:100px">
            </a>
            <a target="_blank" href="paris.jpg" id="relatorio">
                <img src="imagens/relatorio.png" alt="relatorio" style="width:100px">
            </a>
            <a target="_blank" href="paris.jpg" id="sell">
                <img src="imagens/sell.png" alt="sell" style="width:100px">
            </a>
            <a target="_blank" href="paris.jpg" id="addfunc">
                <img src="imagens/func.png" alt="addfunc" style="width:100px">
            </a>


        </div>

        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>

    </body>

</html>
