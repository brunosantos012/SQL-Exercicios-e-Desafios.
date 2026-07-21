--°Listar o nome, sobrenome e e-mail dos clientes que possuem todas essas informações cadastradas, organizando os resultados em ordem decrescente pelo primeiro nome.

USE ContosoRetailDW

SELECT FirstName AS 'NOME',
       LastName AS 'SOBRE NOME',
       EmailAddress AS 'EMAIL'
FROM DimCustomer
WHERE FirstName IS NOT NULL 
AND LastName IS NOT NULL 
AND EmailAddress IS NOT NULL 
--ORDER BY FirstName ASC 
ORDER BY FirstName DESC 
