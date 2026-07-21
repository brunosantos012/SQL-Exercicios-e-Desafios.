USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE UnitPrice BETWEEN 1000 AND 2500
ORDER BY UnitPrice DESC 