USE ContosoRetailDW

SELECT 
     FirstName,
     LastName,
     DepartmentName
FROM DimEmployee
WHERE DepartmentName = 'SALES'
OR DepartmentName = 'MARKETING'
ORDER BY  FirstName ASC, LastName ASC