--°Listar os produtos das marcas FABRIKAM e CONTOSO, exibindo o nome do produto, a marca, a cor e o preço unitário.

USE ContosoRetailDW
SELECT 
      ProductName,
      BrandName, 
      ColorName,
      UnitPrice
FROM DimProduct
--WHERE ColorName = 'BLACK'
--AND UnitPrice > 100
--WHERE BrandName = 'CONTOSO'
--AND ColorName = 'SILVER'
WHERE BrandName = 'FABRIKAM'
OR BrandName = 'CONTOSO'
