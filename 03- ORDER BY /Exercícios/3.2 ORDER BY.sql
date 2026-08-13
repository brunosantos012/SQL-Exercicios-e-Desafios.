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