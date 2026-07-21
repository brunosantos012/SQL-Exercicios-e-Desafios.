--°Listar os funcionários que pertencem aos departamentos de Sales ou Marketing
--Organizando os resultados em ordem alfabética pelo primeiro nome e, em caso de empate, pelo sobrenome.

USE ContosoRetailDW

SELECT 
     FirstName,
     LastName,
     DepartmentName
FROM DimEmployee
WHERE DepartmentName = 'SALES'
OR DepartmentName = 'MARKETING'
ORDER BY  FirstName ASC, LastName ASC
