USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE BrandName NOT IN ('CONTOSO','FABRIKAM')
ORDER BY UnitPrice DESC 