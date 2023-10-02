CREATE TABLE carro(
	codigo INT (8) NOT NULL,
	tipo VARCHAR (100) NOT NULL,
	modelo VARCHAR (100) NOT NULL,
	ano_fabricacao DATE NOT NULL,
	combustivel VARCHAR (100),
	placa CHAR (7) PRIMARY KEY ,
	chassi VARCHAR (50)
	);
	
	ALTER TABLE carro 
	MODIFY chassi VARCHAR (50) NOT NULL;
	
	DESC carro;
	
CREATE TABLE cargo(
	codigo INT (10) PRIMARY KEY ,
	nome VARCHAR (100) NOT NULL ,
	salbase FLOAT (6,2)
	);

CREATE TABLE depa(
	codigo INT (10) PRIMARY KEY,
	nome VARCHAR (100) NOT NULL 
	);
	
	
CREATE TABLE depe(
	codigo INT (10) PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
	dta_n DATE,
	sexo CHAR (1),
	cod_fun INT (10) NOT NULL
	);
	
CREATE TABLE funcionario(
	codigo INT (10),
	nome VARCHAR (100),
	cpf CHAR (11),
	endereco VARCHAR (100),
	cidade VARCHAR (100),
	tel_1 CHAR (11),
	tel_2 CHAR (11),
	cargo VARCHAR (100)
	depto VARCHAR (100)
	);
	
	DESC funcionario;
	
	ALTER TABLE funcionario
	ADD COLUMN codcarrousado INT NOT NULL UNIQUE;
	ALTER TABLE funcionario
	MODIFY COLUMN depto INT (10),
	MODIFY COLUMN cargo INT (10),
	RENAME COLUMN cod_fun TO codigo,
	MODIFY COLUMN cpf CHAR (11) NOT NULL,
	MODIFY COLUMN nome VARCHAR (100) NOT NULL,
	ADD CONSTRAINT PRIMARY KEY (codigo), 
	ADD CONSTRAINT FOREIGN KEY (depto) REFERENCES depa(codigo),
	ADD CONSTRAINT FOREIGN KEY (cargo) REFERENCES cargo(codigo);
	
	DESC funcionario;
