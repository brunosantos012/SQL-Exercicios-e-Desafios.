--°Listar os produtos cujo nome inicia com "CONTOSO", exibindo o nome do produto, a marca e o preço unitário.

USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE ProductName LIKE 'CONTOSO%'
--ORDER BY ProductName ASC
