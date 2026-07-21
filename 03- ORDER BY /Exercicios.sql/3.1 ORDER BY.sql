USE ContosoRetailDW
SELECT ProductName AS 'NOME DO PRODUTO',
       BrandName AS 'MARCA',
       UnitPrice AS 'PREÇO'
FROM DimProduct
--ORDER BY UnitPrice DESC
ORDER BY UnitPrice ASC 