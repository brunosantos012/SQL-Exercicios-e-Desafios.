--°Listar os produtos cuja cor termina com "BLACK", exibindo o nome do produto, a marca, a cor e o preço unitário.

USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName LIKE '%BLACK'
--ORDER BY ProductName ASC 
