--Desafio 2
--Liste apenas produtos das marcas:
--Contoso
--Litware
--Preço maior que 500.

USE ContosoRetailDW

SELECT
     BrandName,
     ProductName,
     UnitPrice
FROM DimProduct
WHERE BrandName IN ('CONTOSO','LITWARE')
AND UnitPrice >= 500 
ORDER BY BrandName ASC, UnitPrice ASC, ProductName ASC  
