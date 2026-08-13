USE ContosoRetailDW

SELECT
     ProductName,
     ColorName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE ColorName NOT IN ('BLACK','SILVER')
ORDER BY ProductName ASC 