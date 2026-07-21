USE ContosoRetailDW
SELECT ProductName,
       BrandName,
       UnitPrice
 FROM DimProduct
 WHERE UnitPrice >1000
 ORDER BY UnitPrice DESC