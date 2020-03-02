--DEFINE QUAL BANCO DE DADOS SERÁ USADO
USE InLock_Games_Manha;
GO

-- Listar todos os usuários
SELECT * FROM Usuario;

-- Listar todos os estúdios
SELECT * FROM Estudio;

-- Listar todos os jogos
SELECT * FROM Jogo;

-- Listar todos os jogos e seus respectivos estúdios
SELECT NomeJogo, NomeEstudio FROM Jogo INNER JOIN Estudio ON Jogo.IdEstudio = Estudio.IdEstudio;

-- Buscar e trazer na lista todos os estúdios, mesmo que eles não contenham nenhum jogo de referência
SELECT NomeEstudio, NomeJogo FROM Estudio INNER JOIN Jogo ON Estudio.IdEstudio = Jogo.IdEstudio;

-- Busca um usuário através do E-mail e da Senha
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario
WHERE U.Email = 'admin@admin.com' AND U.Senha = 'admin'

-- Exibe o funcionário com ID = 1
SELECT IdFuncionario, Nome, Sobrenome FROM Funcionarios WHERE IdFuncionario = 1;

-- Exibe o funcionário que tenha o nome Catarina
SELECT IdFuncionario, Nome, Sobrenome FROM Funcionarios WHERE Nome = 'Catarina';

-- Exibe o nome completo dos funcionários
SELECT IdFuncionario, CONCAT (Nome,' ',Sobrenome) AS [Nome Completo], DataNascimento FROM Funcionarios;

-- Exibe todos os funcionários de forma ordenada
SELECT IdFuncionario, Nome, Sobrenome, DataNascimento FROM Funcionarios ORDER BY Nome DESC;

-- Exibe todos os tipos de usuario
SELECT * FROM TipoUsuario;

-- Exibe os usuarios dos funcionarios
SELECT * FROM Usuario INNER JOIN Funcionarios ON Usuario.IdUsuario = Funcionarios.IdUsuario;

-- Exibe todos os usuários
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario

-- Busca um usuário através do E-mail e da Senha
SELECT U.IdUsuario, U.Email, U.IdTipoUsuario, TU.Titulo FROM Usuario U
INNER JOIN TipoUsuario TU
ON U.IdTipoUsuario = TU.IdTipoUsuario
WHERE U.Email = 'admin@admin.com' AND U.Senha = '123'
