--Desafio 2
--Liste produtos que sejam:
--Marca = Litware
--OU
--Marca = Fabrikam
--Mas somente:
--Preço acima de 1000
--Dica: esse desafio vai fazer você pensar sobre a prioridade entre AND e OR.

USE ContosoRetailDW

SELECT --TOP (10) WITH TIES 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE (BrandName = 'LITWARE' OR BrandName ='FABRIKAM') 
AND UnitPrice >1000
--ORDER BY UnitPrice ASC