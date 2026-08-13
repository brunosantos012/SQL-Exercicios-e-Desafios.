USE ContosoRetailDW
SELECT FirstName AS 'NOME',
       LastName AS 'SOBRENOME',
       DepartmentName
FROM DimEmployee
    WHERE DepartmentName = 'SALES'