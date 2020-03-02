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
SELECT NomeEstudio, NomeJogo FROM Estudio INNER JOIN Jogo ON Estudio.IdEstudio = Jogo.IdEstudio;

-- Busca um usu�rio atrav�s do E-mail e da Senha
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario
WHERE U.Email = 'admin@admin.com' AND U.Senha = 'admin'

-- Exibe o funcion�rio com ID = 1
SELECT IdFuncionario, Nome, Sobrenome FROM Funcionarios WHERE IdFuncionario = 1;

-- Exibe o funcion�rio que tenha o nome Catarina
SELECT IdFuncionario, Nome, Sobrenome FROM Funcionarios WHERE Nome = 'Catarina';

-- Exibe o nome completo dos funcion�rios
SELECT IdFuncionario, CONCAT (Nome,' ',Sobrenome) AS [Nome Completo], DataNascimento FROM Funcionarios;

-- Exibe todos os funcion�rios de forma ordenada
SELECT IdFuncionario, Nome, Sobrenome, DataNascimento FROM Funcionarios ORDER BY Nome DESC;

-- Exibe todos os tipos de usuario
SELECT * FROM TipoUsuario;

-- Exibe os usuarios dos funcionarios
SELECT * FROM Usuario INNER JOIN Funcionarios ON Usuario.IdUsuario = Funcionarios.IdUsuario;

-- Exibe todos os usu�rios
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario

-- Busca um usu�rio atrav�s do E-mail e da Senha
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario
WHERE U.Email = 'admin@admin.com' AND U.Senha = '123'
