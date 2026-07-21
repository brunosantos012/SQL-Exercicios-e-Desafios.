USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE ProductName LIKE '%CAMERA%'
--ORDER BY ProductName ASC