USE ContosoRetailDW


SELECT TOP (5)
       ProductName,
       BrandName,
       UnitPrice
FROM DimProduct
ORDER BY UnitPrice DESC