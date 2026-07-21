--°Listar os produtos cujo nome contém a palavra "CAMERA", exibindo o nome do produto, a marca e o preço unitário.

USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE ProductName LIKE '%CAMERA%'
--ORDER BY ProductName ASC
