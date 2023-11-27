DROP database IF EXISTS biblioteca;
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

CREATE TABLE IF NOT EXISTS autores (
  codigo int(11) NOT NULL,
  nome varchar(45) NOT NULL,
  nacionalidade varchar(45) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS editoras (
  codigo int(11) NOT NULL,
  nome varchar(45) NOT NULL,
  endereco varchar(45) DEFAULT NULL,
  contato varchar(45) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS funcionarios (
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) NOT NULL,
  telefone VARCHAR(11) NOT NULL,
  salario decimal(10,2) DEFAULT NULL,
  funcao VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (cpf));
  
CREATE TABLE IF NOT EXISTS usuarios (
  cpf varchar(11) NOT NULL,
  nome varchar(45) NOT NULL,
  endereco varchar(45) DEFAULT NULL,
  telefone bigint(13) DEFAULT NULL,
  PRIMARY KEY (cpf)
);

CREATE TABLE IF NOT EXISTS livros (
  numero int(11) NOT NULL,
  titulo varchar(100) NOT NULL,
  genero varchar(45) NOT NULL,
  edicao smallint(4) NOT NULL,
  ano_publicacao year(4) NOT NULL,
  cpf_funcionario varchar(11) DEFAULT NULL,
  codigo_editora int(6) DEFAULT NULL,
  cpf_usuarioRetirar VARCHAR(11) DEFAULT NULL,
  cpf_usuarioReservar VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (numero),
  CONSTRAINT fk_liv_edi FOREIGN KEY (codigo_editora) REFERENCES editoras (codigo),
  CONSTRAINT fk_liv_frs FOREIGN KEY (cpf_usuarioReservar) REFERENCES usuarios (cpf),
  CONSTRAINT fk_liv_frt FOREIGN KEY (cpf_usuarioRetirar) REFERENCES usuarios (cpf),
  CONSTRAINT fk_liv_fun FOREIGN KEY (cpf_funcionario) REFERENCES funcionarios (cpf)
);

CREATE TABLE IF NOT EXISTS livros_autores (
  numero_livro int(11) NOT NULL,
  codigo_autor int(11) NOT NULL,
  PRIMARY KEY (numero_livro,codigo_autor),
  CONSTRAINT fk_livAut_aut FOREIGN KEY (codigo_autor) REFERENCES autores (codigo),
  CONSTRAINT fk_livAut_liv FOREIGN KEY (numero_livro) REFERENCES livros (numero)
);

INSERT INTO autores VALUES
(22564411, 'Walter Isaacson', 'Americana'),
(55490076, 'Adélia Prado', 'Brasileira'),
(77548854, 'Ana Lucia Jankovic Barduchi', 'Brasileira'),
(85668900, 'Ethevaldo Siqueira', 'Brasileira'),
(90984133, 'Steven K. Scott', 'Americana');

INSERT INTO editoras VALUES
(2134000, 'Saraiva', 'São Paulo', 8003434),
(2287000, 'Eras', 'Brasília', 8002432),
(3557000, 'Summer', 'Curitiba', 8002198),
(6655000, 'Pontos', 'São Paulo', 8005600),
(9898000, 'Marks', 'Rio de Janeiro', 8009000);

INSERT INTO funcionarios VALUES
('20321295096', 'João Alberto Smith', 'Itatiba', '22447865', 0.00, NULL),
('23161197770', 'Ana Salles Azir', 'Salto', '22317865', 0.00, 'Recepcionista'),
('30361290876', 'Ademir José Silva', 'Campinas', '22317865', 0.00, NULL),
('32361298734', 'Luis Henrique Talles', 'Campinas', '21531785', 0.00, NULL),
('45403612087', 'Francisco José Almeida', 'Indaiatuba', '25417761', 0.00, NULL),
('61254590871', 'Lucia Vicentim', 'Salto', '21316565', 0.00, 'Bibliotecaria');

INSERT INTO usuarios VALUES
('10122020232', 'Maria de Lourdes Amaral', NULL, 35440089), 
('19321122213', 'José Francisco de Paula', NULL, 27219756),
('22539910976', 'Ivete Medina Chernell', NULL, 48170352),
('45399109881', 'Raquel Santos', NULL, 87603451),
('70964411900', 'Luiza Souza Prado', NULL, 34559087);

INSERT INTO livros VALUES
(10277843, 'O Pelicano', 'Romance', 12, 1984, NULL, 2134000, NULL, NULL),
(32176500, 'Salomão', 'Romance', 2, 2011, '61254590871', 6655000, NULL, NULL),
(45112239, 'Steve Jobs', 'Biografia', 48, 2011, NULL, 2287000, '19321122213', NULL),
(67392217, 'Empregabilidade', 'Administração', 22, 1977, '32361298734', 9898000, NULL, NULL),
(67554421, 'Bagagem', 'Poesia', 5, 1972, NULL, 6655000, NULL, '19321122213'),
(77680012, 'A Duração do Dia', 'Poesia', 1, 2010, NULL, 2134000, '10122020232', NULL),
(87659908, 'Tecnologias que Mudam', 'Tecnologia', 2, 2007, NULL, 2134000, NULL, '70964411900');

INSERT INTO livros_autores VALUES
(32176500, 22564411),
(45112239, 22564411),
(10277843, 55490076),
(67554421, 55490076),
(77680012, 55490076),
(67392217, 77548854),
(87659908, 85668900),
(32176500, 90984133);

UPDATE funcionarios SET funcao = 'Auxiliar' , salario = 1800.00 WHERE cpf = '32361298734';
DELETE FROM usuarios WHERE cpf = '45399109881';
DELETE FROM livros_autores WHERE numero_livro = 32176500 and codigo_autor = 90984133;
UPDATE livros SET cpf_usuarioReservar = NULL, cpf_usuarioRetirar = '70964411900' WHERE numero = 87659908;

INSERT INTO editoras VALUES
(9900545, 'Elsieve', 'São Paulo', NULL),
(4323458, 'Campus', 'Rio de Janeiro', 8009988),
(9876546, 'Erica', 'Salvador', NULL);

UPDATE funcionarios SET funcao = 'Analista Contábil' WHERE cpf = '20321295096' OR cpf = '45403612087';
UPDATE funcionarios SET salario = 5000.00 WHERE funcao = 'Analista Contábil';
UPDATE funcionarios SET salario = 2000.00, funcao = 'Auxiliar administrativo' WHERE funcao = NULL;
DELETE FROM editoras WHERE endereco = 'Salvador';
UPDATE funcionarios SET funcao = NULL, salario = NULL WHERE funcao = 'Analista Contábil' OR funcao = 'Auxiliar administrativo';
DELETE FROM editoras WHERE nome = 'Elsieve' OR nome = 'Campus';
