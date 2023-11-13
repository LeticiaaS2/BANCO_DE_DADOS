CREATE DATABASE atv3

CREATE TABLE cliente(
cpf CHAR (6) PRIMARY KEY,
nome VARCHAR (100),
numConta CHAR (4),
telefone CHAR (3),
cidade VARCHAR (100)
);

CREATE TABLE carro(
chassi CHAR (3) PRIMARY KEY,
modelo VARCHAR (100),
cor VARCHAR (100),
ano CHAR (4),
valor FLOAT 
);

CREATE TABLE aluguel(
cpf CHAR (6),
chassi CHAR (3),
dataEntrada DATE,
dataSaida DATE,
total FLOAT,
FOREIGN KEY (cpf) REFERENCES cliente(cpf),
FOREIGN KEY (chassi) REFERENCES carro(chassi));
