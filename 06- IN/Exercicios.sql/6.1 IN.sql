--°Listar os produtos pertencentes às marcas CONTOSO, FABRIKAM e LITWARE, exibindo o nome do produto, a marca e o preço unitário.

USE ContosoRetailDW

SELECT
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE BrandName IN ('CONTOSO', 'FABRIKAM','LITWARE')
