--Desafio 1
--Liste produtos:
--Cor Black
--Silver
--Blue
--Preço acima de 100.

USE ContosoRetailDW
SELECT 
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName IN ('BLACK', 'SILVER', 'BLUE')
AND UnitPrice > 100 
ORDER BY ProductName ASC