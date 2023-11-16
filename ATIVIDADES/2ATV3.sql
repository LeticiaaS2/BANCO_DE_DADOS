CREATE DATABASE atv3

CREATE TABLE cliente(
cpf CHAR (6) ,
nome VARCHAR (100),
numConta CHAR (4),
telefone CHAR (3),
cidade VARCHAR (100));

CREATE TABLE carro(
chassi CHAR (3),
modelo VARCHAR (100),
cor VARCHAR (100),
ano CHAR (4),
valor FLOAT );

CREATE TABLE aluguel(
cpf CHAR (6),
chassi CHAR (3),
dataEntrada DATE,
dataSaida DATE,
total FLOAT);

INSERT INTO cliente VALUES
(111111, 'Ana', 2317, 019, 'Campinas'),
(222222, 'Fábio', 1711, 019, 'Jundiaí'),
(121111, 'Maria', 7121, 011, 'São Paulo'),
(321222, 'Flávio', 2211, 019, 'Campinas'),
(123111, 'Fernando', 1123, 031, 'Rio de Janeiro'),
(217222, 'Marta', 3211, 021, 'Belo Horizonte');

INSERT INTO carro VALUES
('A21', 'Uno', 'Prata', 2003, NULL),
('2AC', 'Gol', 'Preto', 2004, NULL),
(NULL, 'corsa', 'Branco', 2005, NULL),
(NULL, 'uno', 'verde', 2001, NULL),
(NULL, 'Astra', 'Prata', 2005, NULL),
('22A', 'Gol', 'Prata', 2005, NULL);

INSERT INTO aluguel VALUES
(111111, NULL, '2006-07-21', '2006-08-05', NULL),
(222222, NULL, '2006-07-21', NULL , NULL),
(222222, NULL, '2006-07-23', '2006-08-06', NULL),
(222222, NULL, '2006-07-24', NULL , NULL);

INSERT INTO cliente VALUES 
(000000, 'joao', 1111, 123, 'Recife')

INSERT INTO carro (valor, cor, ano, chassi, modelo) VALUES
(10000, 'preto', 2010, '2AB', 'Gol')

INSERT INTO aluguel VALUES 
(111111, '2DA', '2022-05-02', '2022-06-03', 100.50),
(000000, '2AB', '2022-03-02', '2022-04-03', 1500.50),
(111111, '2CA', '2022-02-02', '2022-02-03', 120.50);

UPDATE cliente SET telefone = 19;
UPDATE cliente SET nome = 'Andre' WHERE cpf = 111111;
UPDATE cliente SET cidade = 'Brasilia' WHERE numConta > 2000;
UPDATE carro SET valor = 20000;
UPDATE carro SET cor = 'Azul' WHERE modelo = 'Uno'||modelo = 'Corsa';
UPDATE aluguel SET cpf = 333333 WHERE cpf = 222222;
UPDATE aluguel SET dataSaida = NULL;
DELETE FROM cliente WHERE cidade = 'Campinas';
DELETE FROM carro WHERE ano = 2003 || ano = 2004;

DESC cliente
DESC carro
DESC aluguel
SELECT * FROM cliente
SELECT * FROM carro
SELECT * FROM aluguel
