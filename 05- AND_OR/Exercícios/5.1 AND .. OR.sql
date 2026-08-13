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