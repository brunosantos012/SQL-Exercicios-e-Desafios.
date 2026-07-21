USE ContosoRetailDW
SELECT 
      ProductName,
      BrandName,
      ColorName,
      UnitPrice
FROM DimProduct
WHERE UnitPrice BETWEEN 100 AND 500
ORDER BY UnitPrice ASC 