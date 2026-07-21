USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE ProductName LIKE 'CONTOSO%'
--ORDER BY ProductName ASC