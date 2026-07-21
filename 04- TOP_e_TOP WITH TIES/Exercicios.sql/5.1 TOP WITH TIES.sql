--°Exibir os 3 produtos mais caros da marca CONTOSO, incluindo automaticamente outros produtos que possuam o mesmo preço do último item retornado.

USE ContosoRetailDW
                                               
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
