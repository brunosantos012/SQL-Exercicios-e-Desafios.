USE ContosoRetailDW
                                              --TOP ** W.I.T.H TIES 
--SELECT TOP 5 WITH TIES 
--SELECT TOP 10 WITH TIES 
SELECT TOP 3 WITH TIES 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE BrandName = 'CONTOSO'
ORDER BY UnitPrice DESC 
--ORDER BY UnitPrice DESC
--ORDER BY UnitPrice ASC 
