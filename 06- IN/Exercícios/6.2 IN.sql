USE ContosoRetailDW
SELECT 
     FirstName AS'NOME',
     LastName AS'SOBRENOME',
     MaritalStatus AS'ESTADO CIVIL'
FROM DimEmployee
WHERE MaritalStatus IN  ('M','S')
ORDER BY FirstName ASC, LastName ASC 