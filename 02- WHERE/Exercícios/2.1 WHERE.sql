--Exercício

--Na tabela: DimCustomer
--Mostre:
--Primeiro nome
--Sobrenome
--Email

--Somente clientes do sexo masculino.

--Dica: descubra qual coluna indica o gênero.

USE ContosoRetailDW
	SELECT FirstName AS 'PRIMEIRO NOME',
		   LastName AS 'SOBRENOME',
		   EmailAddress AS 'EMAIL',
		   GENDER AS 'GENERO'
	FROM DimCustomer
		--WHERE Gender = 'M'
		WHERE Gender = 'F'


