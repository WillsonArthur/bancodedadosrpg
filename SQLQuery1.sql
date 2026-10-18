CREATE DATABASE EditiveDB
	use EditiveDB

	CREATE TABLE Usuario
	(	UsuarioId VARCHAR(18) PRIMARY KEY
		,Email VARCHAR(120)
		,Senha VARCHAR(120)
		)
	CREATE TABLE Personagens
	(	PersonagensId VARCHAR(18) PRIMARY KEY
		,NomePersonagem VARCHAR(120)
		,UsuarioId VARCHAR FOREIGN KEY REFERENCES Usuario(Id)
		,ClasseId VARCHAR FOREIGN KEY REFERENCES Classe(Id)
		)
	CREATE TABLE Classe
	(	ClasseId VARCHAR(18) PRIMARY KEY
		,Nome VARCHAR(120)
		,DescriçãO VARCHAR(120)
		)
	CREATE TABLE Classe_Habilidade
	(
		ClasseId VARCHAR FOREIGN KEY REFERENCES Classe(Id)
		,HabilidadeId VARCHAR FOREIGN KEY REFERENCES Habilidade(Id)
		)
	CREATE TABLE Habilidades
	(	HabilidadeId VARCHAR(18) PRIMARY KEY
		,Nome TEXT
		)
