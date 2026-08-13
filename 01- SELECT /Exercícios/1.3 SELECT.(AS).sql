--Exercício 3 - Alias

--Renomeie as colunas.

USE ContosoRetailDW
SELECT
     FirstName AS 'NOME',
     LastName AS 'SOBRENOME',
     Gender AS 'GÊNERO'
FROM DimCustomer