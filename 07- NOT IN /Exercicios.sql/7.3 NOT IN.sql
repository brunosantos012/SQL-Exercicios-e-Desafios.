--Desafio 
--Mostrar produtos que:
--Não sejam da marca Contoso
--Não sejam da cor White
--Preço maior que 300

USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE BrandName NOT IN ('CONTOSO') 
AND ColorName NOT IN ('WHITE')
AND UnitPrice > 300