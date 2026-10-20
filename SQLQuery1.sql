-- Tarefa #2
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
	CREATE TABLE ClasseHabilidade
	(
		ClasseId VARCHAR FOREIGN KEY REFERENCES Classe(Id)
		,HabilidadeId VARCHAR FOREIGN KEY REFERENCES Habilidade(Id)
		)
	CREATE TABLE Habilidades
	(	HabilidadeId VARCHAR(18) PRIMARY KEY
		,Nome TEXT
		)
	
	-- Tarefa #3
	INSERT INTO Usuario (UsuarioId, Email, Senha)
	VALUES ('Willow', 'willsow@gmail.com', 'SteW#123')

	INSERT INTO Personagens (PersonagensId, NomePersonagem, UsuarioId, ClasseId)
	VALUES ('Willson', 'WillsonTheDestroyer')
	FROM PRIMARY KEY UsuarioId WHERE Usuario
	FROM PRIMARY KEY ClasseId WHERE Classe

	INSERT INTO Classe (ClasseId, Nome, Descrição)
	VALUES ('Ranger1', 'Ranger', 'Ranger, patrulheiro focado em ataques de arco')
	
	INSERT INTO ClasseHabilidade
	FROM PRIMARY KEY ClasseId WHERE Classe
	FROM PRIMARY KEY HabilidadeId WHERE Habilidade

	INSERT INTO Habilidade (HabilidadeId, Nome)
	VALUES ('Ranger001', 'Atirar')

	-- Tarefa #4
