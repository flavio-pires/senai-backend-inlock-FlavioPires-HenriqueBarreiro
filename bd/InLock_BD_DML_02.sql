--DEFINE QUAL BANCO DE DADOS SER� USADO
USE InLock_Games_Manha;
GO

--INSERIR DADOS NAS TABELAS
INSERT INTO Estudio (NomeEstudio)
VALUES ('Blizzard'),
	   ('Rockstar Studios'),
	   ('Square Enix');
GO

INSERT INTO TipoUsuario (Titulo)
VALUES ('Administrador'),
	   ('Cliente');
GO

INSERT INTO Jogo (NomeJogo, Descricao, DataLancamento, Valor, IdEstudio)
VALUES ('Diablo 3', '� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou um f�', '15/05/2012', 99, 1),
	   ('Red Dead Redemption II', 'Jogo eletr�nico de a��o-aventura western', '26/10/2018', 120, 2);
GO

INSERT INTO Usuario (Email, Senha, IdTipoUsuario)
VALUES ('admin@admin.com', 'admin', 1),
	   ('cliente@cliente.com', 'cliente', 2);
GO
