USE ContosoRetailDW

SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName = 'BLACK'
AND UnitPrice BETWEEN 500 AND 2000
ORDER BY UnitPrice ASC 