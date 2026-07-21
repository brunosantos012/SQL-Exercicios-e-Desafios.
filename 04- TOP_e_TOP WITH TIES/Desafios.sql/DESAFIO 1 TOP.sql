--Desafio 1
--O gerente quer conhecer os produtos premium.
--Mostre:
--Nome
--Marca
--Cor
--Preço
--Apenas os 10 produtos mais caros.

USE ContosoRetailDW

SELECT TOP (10)
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
ORDER BY UnitPrice DESC 