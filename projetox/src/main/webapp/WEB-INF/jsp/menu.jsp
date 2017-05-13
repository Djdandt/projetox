<%-- 
    Document   : newjsplogin
    Created on : 25/04/2017, 20:28:07
    Author     : bruno.flima4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto X</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/teste.css" rel="stylesheet">
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <!--        <div>
                    <p class="barNav">
                        <a href="seu_link.html">Home</a>
                        <a href="seu_link.html">Filiais</a>
                        <a href="seu_link.html">Contato</a>
                    </p>
                </div>-->
        <nav>
            <ul class="menu">
                <li><a href="#"><b/>Home</a></li>
                <li><a href="#">Consultar</a>
                    <ul>
                        <li><a href="clientes">Cliente</a></li>
                        <li><a href="estoque">Produto</a></li>
                        <li><a href="funcionarios">Funcionário</a></li>
                    </ul>   
                </li>
                <li><a href="#">Relatórios</a></li>
                <li><a href="#">Cadastro</a>
                    <ul>
                        <li><a href="#" data-toggle="modal" data-target="#cadastrarCliente"><font>Cliente</font></a></li> 
                        <li><a href="#" data-toggle="modal" data-target="#cadastrarFuncionario"><font>Funcionario</font></a></li> 
                        <li><a href="#" data-toggle="modal" data-target="#cadastrarProduto"><font>Produto</font></a></li> 



                    </ul>
                </li>



                <li><a href="estoque">Estoque</a></li>                
            </ul>
        </nav>

        <section class="vh100" id="primeiro">
            <center>	

                <img class="logo2" src="imagens/logo.png" style="margin-top: 200px; width: 100%">
            </center>
        </section>

        <div class="modal fade" id="cadastrarProduto" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">

                    <form class="form-horizontal" action="cadastrarProduto" method="post"  id="form_cadastro">

                        <center>
                            <div class="register-block">
                                <h2 style="margin-bottom: 25px"> Cadastro de Produtos </h2>

                                <!-- Form Name -->

                                <table>

                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Nome</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
                                                <input  name="nome" placeholder="Nome" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Código</label> 
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input name="codigo" placeholder="Codigo" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Valor</label> 
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
                                                <input name="valor" placeholder="Valor" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label">Tipo</label>
                                        <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                <select required name="tipo" class="form-control selectpicker">
                                                    <option value="" disabled selected>Selecione o tipo..</option>
                                                    <option value="bolsa">Bolsa</option>
                                                    <option value="relogio">Relógio</option>
                                                    <option value="oculos">Óculos</option>
                                                    <option value="bone">Boné</option>
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


                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Descrição</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-edit"></i></span>
                                                <textarea rows="6" style="width: 15em; resize: none;" id="txtdescricao" name="descricao"></textarea>
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
                                    <input type="submit" id="btnCadastro" value="Cadastrar" />
                                </div>
                            </div>

                        </center>
                    </form>
                </div>
            </div>




        </div>


        <!--- -->
        <div class="modal fade" id="cadastrarFuncionario" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form class="form-horizontal" action="cadastrarFuncionario" method="post"  id="form_cadastro">

                        <center>
                            <div class="register-block">
                                <h2 style="margin-bottom: 25px"> Cadastro de Funcionários </h2>

                                <!-- Form Name -->

                                <table>

                                    <!-- Text input-->

                                    <!--                                <div class="form-group">
                                                                        <label class="col-md-4 control-label">Usuário</label>  
                                                                        <div class="col-md-4 inputGroupContainer">
                                                                            <div class="input-group">
                                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                                                <input  name="username" placeholder="Usuário para fazer login" class="form-control"  type="text">
                                                                            </div>
                                                                        </div>
                                                                    </div>-->

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Primeiro Nome</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input  name="nome" placeholder="Primeiro Nome" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Sobrenome</label> 
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input name="sobrenome" placeholder="Sobrenome" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >Data de Nascimento</label> 
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                <input name="dataNasc" placeholder="Data de nascimento" class="form-control"  type="Date">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" >CPF</label> 
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input name="cpf" placeholder="000.000.000-00" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">E-Mail</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                <input name="email" placeholder="E-mail" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>


                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Telefone</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                <input name="telefone" placeholder="(xx)xxxxx-xxxx" class="form-control" type="text">
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label">Estado</label>
                                        <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                <select required name="estado" class="form-control selectpicker">
                                                    <option value="" disabled selected>Selecione um Estado...</option>
                                                    <option value="AC">Acre</option>
                                                    <option value="AL">Alagoas</option>
                                                    <option value="AP">Amapá</option>
                                                    <option value="AM">Amazonas</option>
                                                    <option value="BA">Bahia</option>
                                                    <option value="CE">Ceará</option>
                                                    <option value="DF">Distrito Federal</option>
                                                    <option value="ES">Espírito Santo</option>
                                                    <option value="GO">Goiás</option>
                                                    <option value="MA">Maranhão</option>
                                                    <option value="MT">Mato Grosso</option>
                                                    <option value="MS">Mato Grosso do Sul</option>
                                                    <option value="MG">Minas Gerais</option>
                                                    <option value="PA">Pará</option>
                                                    <option value="PB">Paraíba</option>
                                                    <option value="PR">Paraná</option>
                                                    <option value="PE">Pernambuco</option>
                                                    <option value="PI">Piauí</option>
                                                    <option value="RJ">Rio de Janeiro</option>
                                                    <option value="RN">Rio Grande do Norte</option>
                                                    <option value="RS">Rio Grande do Sul</option>
                                                    <option value="RO">Rondônia</option>
                                                    <option value="RR">Roraima</option>
                                                    <option value="SC">Santa Catarina</option>
                                                    <option value="SP">São Paulo</option>
                                                    <option value="SE">Sergipe</option>
                                                    <option value="TO">Tocantins</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Cidade</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                <input name="cidade" placeholder="Cidade" class="form-control"  type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label"> Cargo do Funcionário</label>
                                        <div class="col-md-4 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                <select required name="cargo" class="form-control selectpicker">
                                                    <option value="" disabled selected>Selecione um cargo...</option>
                                                    <option>Admin</option>
                                                    <option>Vendedor</option>
                                                    <option >Estoquista</option>
                                                    <option >Gerente</option>

                                                </select>
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
                                    <input type="submit" id="btnCadastro" value="Cadastrar" />
                                </div>
                            </div>

                        </center>
                    </form>
                </div>
            </div>
        </div>


            <!--- ---->
            <div class="modal fade" id="cadastrarCliente" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form class="form-horizontal" action="cadastrarCliente" method="post"  id="form_cadastro">

                            <center>
                                <div class="register-block">
                                    <h2 style="margin-bottom: 25px"> Cadastro de Clientes </h2>

                                    <!-- Form Name -->

                                    <table>

                                        <!-- Text input-->

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Primeiro Nome</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input  name="nome" placeholder="Primeiro Nome" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Text input-->

                                        <div class="form-group">
                                            <label class="col-md-4 control-label" >Sobrenome</label> 
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input name="sobrenome" placeholder="Sobrenome" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label" >Data de Nascimento</label> 
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    <input name="dataNasc" placeholder="Data de nascimento" class="form-control"  type="Date">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label" >CPF</label> 
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input name="cpf" placeholder="000.000.000-00" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label">E-Mail</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                    <input name="email" placeholder="E-mail" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>


                                        <!-- Text input-->

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Telefone</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                                    <input name="telefone" placeholder="(xx)xxxxx-xxxx" class="form-control" type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Text input-->
                                        <div class="form-group"> 
                                            <label class="col-md-4 control-label">Estado</label>
                                            <div class="col-md-4 selectContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                                    <select required name="estado" class="form-control selectpicker">
                                                        <option value="" disabled selected>Selecione um Estado...</option>
                                                        <option value="AC">Acre</option>
                                                        <option value="AL">Alagoas</option>
                                                        <option value="AP">Amapá</option>
                                                        <option value="AM">Amazonas</option>
                                                        <option value="BA">Bahia</option>
                                                        <option value="CE">Ceará</option>
                                                        <option value="DF">Distrito Federal</option>
                                                        <option value="ES">Espírito Santo</option>
                                                        <option value="GO">Goiás</option>
                                                        <option value="MA">Maranhão</option>
                                                        <option value="MT">Mato Grosso</option>
                                                        <option value="MS">Mato Grosso do Sul</option>
                                                        <option value="MG">Minas Gerais</option>
                                                        <option value="PA">Pará</option>
                                                        <option value="PB">Paraíba</option>
                                                        <option value="PR">Paraná</option>
                                                        <option value="PE">Pernambuco</option>
                                                        <option value="PI">Piauí</option>
                                                        <option value="RJ">Rio de Janeiro</option>
                                                        <option value="RN">Rio Grande do Norte</option>
                                                        <option value="RS">Rio Grande do Sul</option>
                                                        <option value="RO">Rondônia</option>
                                                        <option value="RR">Roraima</option>
                                                        <option value="SC">Santa Catarina</option>
                                                        <option value="SP">São Paulo</option>
                                                        <option value="SE">Sergipe</option>
                                                        <option value="TO">Tocantins</option>


                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Cidade</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                    <input name="cidade" placeholder="Cidade" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Endereço</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                    <input name="endereco" placeholder="Endereço" class="form-control" type="text">
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label class="col-md-4 control-label">CEP</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                    <input name="cep" placeholder="Cep" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Número da Casa</label>  
                                            <div class="col-md-4 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                    <input name="numCasa" placeholder="Número da casa" class="form-control"  type="text">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-4 control-label">Gênero</label>
                                            <div class="col-md-4">
                                                <div class="radio">
                                                    <label style="padding-left: 25px">
                                                        <input type="radio" name="genero" value="no" /> Masculino 
                                                    </label><label style="padding-left: 25px">
                                                        <input type="radio" name="genero" value="yes" /> Feminino
                                                    </label>
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
                                        <input type="submit" id="btnCadastro" value="Cadastrar" />
                                    </div>
                                </div>

                            </center>
                        </form>
                    </div>
                </div>
            </div>

            <c:import url="./rodape.jsp" />
    </body>
</html>
