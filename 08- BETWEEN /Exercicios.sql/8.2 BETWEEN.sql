--°Listar os produtos com preço unitário entre 1.000 e 2.500, exibindo o nome do produto, a marca e o preço, organizados do maior para o menor valor.

USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE UnitPrice BETWEEN 1000 AND 2500
ORDER BY UnitPrice DESC 
