<%-- 
    Document   : cadastrarFuncionario
    Created on : 09/05/2017, 21:58:01
    Author     : bruno.flima4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/teste.css" rel="stylesheet">
        <link href="css/estilo.css" rel="stylesheet">
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
        <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

        <script src="js/index.js"></script>


        <title>Cadastro de Funcionario</title>
    </head>
    <body>
        <h1>Cadastro de Funcionario</h1>
        
                <div class="modal-content">
                    <form class="form-horizontal" action="cliente" method="post"  id="form_cadastro">

                        <center>
                            <div class="register-block">

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
                                                    <option>São Paulo</option>
                                                    <option>Rio de Janeiro</option>
                                                    <option >Minas Gerais</option>
                                                    <option >Piaui</option>
                                                    <option >Bahia</option>
                                                    <option >Ceará</option>
                                                    <option >Roraima</option>
                                                    <option >Rio Grande do Sul</option>
                                                    <option >Santa Catarina</option>

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
                                                <label>
                                                    <input type="radio" name="genero" value="no" /> Masculino 
                                                </label><label>
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
            
    </body>
</html>
