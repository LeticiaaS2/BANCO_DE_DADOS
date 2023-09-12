CREATE DATABASE atv2;

CREATE TABLE cliente(
Ccliente INT (8) PRIMARY KEY NOT NULL ,
Ncliente VARCHAR (50) NOT NULL ,
Ecliente VARCHAR (40) NOT NULL ,
Cidade VARCHAR (30) NOT NULL ,
Estado CHAR (2) NOT NULL ,
Cep INT (8) CHECK (Cep>1000) NOT NULL);

CREATE TABLE produtos(
Cproduto INT (8) PRIMARY KEY NOT NULL,
Dproduto VARCHAR (50) NOT NULL,
Perecivel BIT DEFAULT (0) NOT NULL,
Validade DATE,
Detalhes BLOB(1000),
Fproduto BINARY);

CREATE TABLE vendas(
Cvenda INT (8) NOT NULL,
Ccliente INT (8) NOT NULL,
PRIMARY KEY (Cvenda, Ccliente),
FOREIGN KEY (Ccliente) REFERENCES cliente (Ccliente));

CREATE TABLE produto_vendas(
Cvenda INT (8) NOT NULL,
Ccliente INT (8) NOT NULL,
Cproduto INT (8) NOT NULL,
Quantidade FLOAT (13, 3) CHECK (Quantidade>0) NOT NULL,
PRIMARY KEY (Cvenda, Ccliente, Cproduto),
FOREIGN KEY (Ccliente) REFERENCES vendas (CVenda),
FOREIGN KEY (Cvenda) REFERENCES vendas (Cvenda),
FOREIGN KEY (Cproduto) REFERENCES produtos (Cproduto));

