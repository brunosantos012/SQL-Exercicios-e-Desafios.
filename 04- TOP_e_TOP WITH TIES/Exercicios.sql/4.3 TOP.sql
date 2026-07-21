USE ContosoRetailDW


SELECT TOP (20)
       ProductName,
       BrandName,
       UnitPrice
FROM DimProduct
ORDER BY UnitPrice ASC