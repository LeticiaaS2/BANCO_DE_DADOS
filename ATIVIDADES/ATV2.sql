CREATE DATABASE atv2;

CREATE TABLE cliente(
Ccliente INT (8) PRIMARY KEY NOT NULL ,
Ncliente VARCHAR (50) NOT NULL ,
Ecliente VARCHAR (40) NOT NULL ,
Cidade VARCHAR (30) NOT NULL ,
Estado CHAR (2) NOT NULL ,
Cep INT (8) CHECK (Cep>1000) NOT NULL);

CREATE TABLE produtos(
Cproduto INT (8) NOT NULL,
Dproduto VARCHAR (50) NOT NULL,
Perecivel BOOLEAN NOT NULL,
Validade
Detalhes
Fproduto
