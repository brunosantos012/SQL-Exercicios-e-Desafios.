--°Listar o nome, sobrenome e departamento de cada funcionário, organizando os resultados em ordem alfabética
--pelo nome do departamento para facilitar a visualização da estrutura organizacional.

USE ContosoRetailDW

SELECT FirstName AS 'NOME',
       LastName AS 'SOBRENOME',
       DepartmentName AS 'DEPARTAMENTO' 
FROM DimEmployee
ORDER BY DepartmentName ASC
