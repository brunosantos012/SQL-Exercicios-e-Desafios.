USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE BrandName LIKE 'SOUTH%'
--ORDER BY UnitPrice ASC