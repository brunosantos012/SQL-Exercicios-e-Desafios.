USE ContosoRetailDW
SELECT FirstName AS 'NOME',
       LastName AS 'SOBRENOME',
       DepartmentName AS 'DEPARTAMENTO' 
FROM DimEmployee
ORDER BY DepartmentName ASC
