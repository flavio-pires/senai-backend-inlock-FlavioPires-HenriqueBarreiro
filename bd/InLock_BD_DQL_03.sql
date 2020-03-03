--DEFINE QUAL BANCO DE DADOS SER� USADO
USE InLock_Games_Manha;
GO

-- Listar todos os usu�rios
SELECT * FROM Usuario;

-- Listar todos os est�dios
SELECT * FROM Estudio;

-- Listar todos os jogos
SELECT * FROM Jogo;

-- Listar todos os jogos e seus respectivos est�dios
SELECT NomeJogo, NomeEstudio FROM Jogo INNER JOIN Estudio ON Jogo.IdEstudio = Estudio.IdEstudio;

-- Buscar e trazer na lista todos os est�dios, mesmo que eles n�o contenham nenhum jogo de refer�ncia
SELECT * FROM Estudio LEFT OUTER JOIN Jogo ON Estudio.IdEstudio = Jogo.IdEstudio;

-- Busca um usu�rio atrav�s do E-mail e da Senha
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario
WHERE U.Email = 'admin@admin.com' AND U.Senha = 'admin'

-- Buscar um jogo por IdJogo;
SELECT NomeJogo, Descricao, DataLancamento, Valor FROM Jogo
WHERE IdJogo = 2;

-- Buscar um est�dio por IdEstudio
SELECT NomeEstudio FROM Estudio
WHERE IdEstudio = 3;
