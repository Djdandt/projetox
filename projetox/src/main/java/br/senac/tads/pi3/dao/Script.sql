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
    idProduto INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) CONSTRAINT PK_Produto PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Codigo INT NOT NULL UNIQUE,
    Tipo VARCHAR(50) NOT NULL,
    Quantidade INT NOT NULL,
    Descricao VARCHAR(255),
    Valor DOUBLE NOT NULL
);

create table Cliente (
    idCliente INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) CONSTRAINT PK_Cliente PRIMARY KEY,
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