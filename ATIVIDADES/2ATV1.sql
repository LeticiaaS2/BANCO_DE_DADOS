CREATE DATABASE fabrica;

CREATE TABLE cliente (
id_cliente INT (8) PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
endereco VARCHAR (100) NOT NULL,
cidade VARCHAR (100) NOT NULL,
uf CHAR (2) NOT NULL,
telefone VARCHAR (100),
contato VARCHAR (100));

	INSERT INTO cliente (id_cliente, nome, endereco, cidade, uf, telefone, contato) VALUES
	( 1,'Francisco de Assis','Av. Principal, 500','Santarém','PA','3522-0101', 'FRANCISCO');
	

CREATE TABLE transportadora (
id_transportadora INT (8) PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
endereco VARCHAR (100) NOT NULL,
uf CHAR (2));

	INSERT transportadora (id_transportadora, nome, endereco, uf) VALUES
	(1, 'Transpedroso', 'AV.Getulio Vargas', 'SP');

CREATE TABLE pedido (
id_pedido INT (8) PRIMARY KEY,
data_p DATE,
valor INT,
id_cliente INT (8),
id_vendedor INT (8),
id_transportadora INT (8),
CONSTRAINT FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
CONSTRAINT FOREIGN KEY (id_transportadora) REFERENCES transportadora (id_transportadora));

  INSERT INTO pedido (id_pedido, data_p, valor, id_cliente, id_vendedor, id_transportadora) VALUES 
  (1, '2012/06/08', 500, 1, 1, 1);

CREATE TABLE fabrica (
id_fabrica INT (8),
nome VARCHAR (100) NOT NULL,
uf CHAR (2) NOT NULL);

  INSERT INTO fabrica (id_fabrica, nome, uf) VALUES
  (1, 'CAP computadore LTDA', 'SP');

CREATE TABLE produto (
id_produto INT (8) PRIMARY KEY,
referencia VARCHAR (100),
descricao VARCHAR (100),
unidade CHAR (2),
id_fabrica INT (8),
CONSTRAINT FOREIGN KEY (id_fabrica) REFERENCES fabrica (id_fabrica));

  INSERT INTO produto (id_produto, referencia, descricao, unidade, id_fabrica) VALUES
  (1, NULL, 'Microcomputador', 'UN', 1);
