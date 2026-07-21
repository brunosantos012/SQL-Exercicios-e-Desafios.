--°Listar os produtos que não possuem as cores Black e Silver, exibindo o nome do produto, a cor, a marca e o preço unitário 
-- Organizados em ordem alfabética pelo nome do produto.

USE ContosoRetailDW

SELECT
     ProductName,
     ColorName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE ColorName NOT IN ('BLACK','SILVER')
ORDER BY ProductName ASC 
