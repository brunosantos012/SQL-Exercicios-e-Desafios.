--°Exibir os 8 primeiros funcionários cadastrados na tabela DimEmployee, apresentando o primeiro nome, sobrenome e departamento em que atuam.

USE ContosoRetailDW

SELECT TOP (8)
     FirstName, 
     LastName, 
     DepartmentName
 FROM DimEmployee
