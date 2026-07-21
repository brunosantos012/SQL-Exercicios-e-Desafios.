USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName LIKE '%BLACK'
--ORDER BY ProductName ASC 