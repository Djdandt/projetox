/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  vinicius.fbatista1
 * Created: 24/04/2017
 */

create table Produto(
    idProduto INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1)
 CONSTRAINT PK_Produto PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Codigo INT NOT NULL UNIQUE,
    Tipo VARCHAR(50) NOT NULL,
    Quantidade INT NOT NULL,
    Descricao VARCHAR(255),
    Valor DOUBLE NOT NULL,
    CadastradoPor VARCHAR(50) NOT NULL,
    DataCadastro TIMESTAMP NOT NULL
);

create table Cliente (
    idCliente INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1)
 CONSTRAINT PK_Cliente PRIMARY KEY,
    nomeCliente VARCHAR(50) NOT NULL,
    sobrenomeCliente VARCHAR(50) NOT NULL,
    dataNasc DATE NOT NULL,
    cpfCliente VARCHAR(11) NOT NULL UNIQUE,
    emailCliente VARCHAR(50) NOT NULL,
    telefoneCliente VARCHAR(50) NOT NULL,
    estadoCliente VARCHAR(50) NOT NULL,
    cidadeCliente VARCHAR(50) NOT NULL,
    enderecoCliente VARCHAR(50) NOT NULL,
    cepCliente VARCHAR(50) NOT NULL,
    numCasa INT NOT NULL,
    generoCliente VARCHAR(50) NOT NULL
);

create table Funcionario (
  idFuncionario INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1)
 CONSTRAINT PK_Funcionario PRIMARY KEY,
  nomeFuncionario VARCHAR(50) NOT NULL,
  sobrenomeFuncionario VARCHAR(50) NOT NULL,
  dataNasc DATE NOT NULL,
  cpfFuncionario VARCHAR(11) NOT NULL UNIQUE,
  emailFuncionario VARCHAR(50) NOT NULL,
  telefoneFuncionario VARCHAR(50) NOT NULL,
  estadoFuncionario VARCHAR(50) NOT NULL,
  cidadeFuncionario VARCHAR(50) NOT NULL,
  cargo VARCHAR(50) NOT NULL

);

 create table Venda(
    idVenda INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    idCliente INT NOT NULL,
    idProduto INT NOT NULL,
    nomeCliente VARCHAR(50) NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
    dataVenda TIMESTAMP NOT NULL,
    valorFinal DOUBLE NOT NULL,
    PRIMARY KEY (idVenda),
    FOREIGN KEY (idProduto) REFERENCES Produto(CodProduto),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

create table Relatorio(
    idRelatorio INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    nmProduto VARCHAR(50) NOT NULL,
    nmCliente VARCHAR(50) NOT NULL,
    tipoProduto VARCHAR(50) NOT NULL
    venda TIMESTAMP NOT NULL,
    vlFinal DOUBLE NOT NULL,
    valorProduto DOUBLE NOT NULL,
    quantProduto INT NOT NULL
    FOREIGN KEY (nomeProduto) REFERENCES Produto(Nome),
    FOREIGN KEY(nomeCliente) REFERENCES Cliente(nomeCliente),
    FOREIGN KEY (tipoProduto) REFERENCES Produto(Tipo),
    FOREIGN KEY (venda) REFERENCES Venda(dataVenda),
    FOREIGN KEY (vlFinal) REFERENCES Venda(valorFinal),
    FOREIGN KEY(valorProduto) REFERENCES Produto(Valor),
    FOREIGN KEY(quantProduto) REFERENCES Produto(Quantidade)
);

create table ProdutosExcluidos(
    idProduto INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    Nome VARCHAR(50) NOT NULL,
    Quantidade INT NOT NULL,
    Valor DOUBLE NOT NULL,
    ExcluidoPor VARCHAR(50) NOT NULL,
    DataExclusao TIMESTAMP NOT NULL
);

-- TRUNCATE TABLE FUNCIONARIO; COMANDO PARA APAGAR DADOS DE UMA TABELA


-- create table VendaProd(
--    idVendaProd INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
--    idVenda INTEGER NOT NULL,
--    idProduto INTEGER NOT NULL,
--    nomeProduto VARCHAR(50) NOT NULL,
--    Quantidade INT NOT NULL,
--    PRIMARY KEY (idVendaProd),
--    FOREIGN KEY (idVenda) REFERENCES Venda(idVenda),
--    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
-- );


-- INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor) VALUES ('Produto1', 1, 'bolsa', 
-- 5, 'nada', 589);
-- INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor) VALUES ('Produto2', 2, 'bolsa', 
-- 5, 'nada', 589);
-- INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor) VALUES ('Produto3', 3, 'bolsa', 
-- 5, 'nada', 589);
-- INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor) VALUES ('Produto4', 4, 'bolsa', 
-- 5, 'nada', 589);
-- INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor) VALUES ('Produto5', 5, 'bolsa', 
-- 5, 'nada', 589);
-- INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor, CadastradoPor, DataCadastro) VALUES ('Produto6', 6, 'bolsa', 
-- 5, 'nada', 589, 'Administrador', '11-11-11');