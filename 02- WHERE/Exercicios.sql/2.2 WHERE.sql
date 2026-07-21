--Exercício:
--Na tabela: DimEmployee
--Mostre:
--Nome
--Sobrenome
--Departamento

--Somente funcionários do departamento:

USE ContosoRetailDW

       SELECT FirstName AS 'NOME',
              LastName AS 'SOBRENOME',
              DepartmentName AS 'DEPARTAMENTO'
FROM DimEmployee
    WHERE DepartmentName = 'SALES'
