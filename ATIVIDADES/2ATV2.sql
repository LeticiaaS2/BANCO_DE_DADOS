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

 INSERT INTO marca (cod_marca, nome, pais_origem) VALUES 
 (1, 'VW', 'Brasil'),
 (2, 'GM', 'Brasil'),
 (3, 'Ford', 'Brasil'),
 (4, 'Fiat', 'Brasil');
 
 INSERT INTO modelo (cod_modelo, nome, tipo, cor, cidade, cod_marca) VALUES 
 (1, 'Gol', 'Power', 'Preto', 'Petrolina', 1),
 (2, 'Palio', 'Flex', 'Vermelho', 'Petrolina', 4),
 (3, 'EcoSport', 'Flex', 'Prata', 'Juazeiro', 3),
 (4, 'Fox', 'Sportline', 'Prata', 'Petrolina', 1);
 
 INSERT INTO filial (cod_filial, nome, cidade) VALUES 
 (1, 'Grande Rio', 'Petrolina'),
 (2, 'Multicar', 'Juazeiro'),
 (3, 'Pomal', 'Petrolina');
 
 INSERT INTO disponiveis (cod_modelo, cod_filial, data_, quantidade) VALUES 
 (1, 1, '2006-04-02', 6),
 (3, 2, '2006-04-06', 4),
 (4, 1, '2006-04-07', 8);
 
 DESC marca
 DESC modelo
 DESC filial
 DESC disponiveis
 SELECT * FROM marca 
 SELECT * FROM modelo
 SELECT * FROM filial
 SELECT * FROM disponiveis
