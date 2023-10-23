CREATE DATABASE atv2

CREATE TABLE marca(
cod_marca INTEGER PRIMARY KEY,
nome VARCHAR (40),
pais_origem VARCHAR (20));

CREATE TABLE modelo(
cod_modelo INTEGER PRIMARY KEY,
nome VARCHAR(40),
tipo VARCHAR (20),
cor VARCHAR (15),
cidade VARCHAR (20),
cod_marca INTEGER,
FOREIGN KEY (cod_marca) REFERENCES marca (cod_marca));

CREATE TABLE filial(
cod_filial INTEGER PRIMARY KEY,
nome VARCHAR (40),
cidade VARCHAR (30));

CREATE TABLE disponiveis(
cod_modelo INTEGER,
cod_filial INTEGER,
data_ DATE,
quantidade INTEGER,
FOREIGN KEY (cod_modelo) REFERENCES modelo (cod_modelo),
FOREIGN KEY (cod_filial) REFERENCES filial (cod_filial));

