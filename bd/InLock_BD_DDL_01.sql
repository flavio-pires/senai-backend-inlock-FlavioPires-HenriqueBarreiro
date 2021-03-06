--CRIA O BANCO DE DADOS
CREATE DATABASE InLock_Games_Manha;
GO

--DEFINE QUAL BANCO DE DADOS SER� USADO
USE InLock_Games_Manha;
GO

--CRIA AS TABELAS DO BANCO DE DADOS
CREATE TABLE Estudio (
	IdEstudio	INT PRIMARY KEY IDENTITY,
	NomeEstudio VARCHAR (255) NOT NULL UNIQUE,
);
GO

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo		  VARCHAR (255) NOT NULL,
);
GO

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	Email	  VARCHAR (255) NOT NULL UNIQUE,
	Senha	  VARCHAR (255) NOT NULL,

	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);
GO

CREATE TABLE Jogo (
	IdJogo			INT PRIMARY KEY IDENTITY,
	NomeJogo		VARCHAR (255) NOT NULL,
	Descricao		VARCHAR (800) NOT NULL,
	DataLancamento  DATE NOT NULL,
	Valor			MONEY NOT NULL,

	IdEstudio		INT FOREIGN KEY REFERENCES Estudio (IdEstudio)
);
GO
