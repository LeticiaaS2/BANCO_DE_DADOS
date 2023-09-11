CREATE DATABASE projeto;

CREATE TABLE funcionario(
	fmatricula SMALLINT primary KEY AUTO_INCREMENT,
	fnome VARCHAR(24) NOT NULL);
	
CREATE TABLE departamento(
	dcodigo SMALLINT primary KEY AUTO_INCREMENT,
	dnome VARCHAR(24) NOT NULL);
	
CREATE TABLE projetos(atv
	pcodigo CHAR(6) PRIMARY KEY,
	pnome VARCHAR(24) not NULL,
	dcodigo SMALLINT NOT NULL,
	resp SMALLINT NOT NULL,
	dataini DATE,
	datafim DATE,
	psuper CHAR(6),
	FOREIGN KEY (dcodigo) REFERENCES departamento (dcodigo),
	FOREIGN KEY (resp) REFERENCES funcionario (fmatricula),
	FOREIGN KEY (psuper) REFERENCES projetos (pcodigo));
