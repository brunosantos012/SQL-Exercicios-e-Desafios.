--°Exibir os 5 produtos mais caros da tabela DimProduct, apresentando o nome do produto, a marca e o preço unitário.

USE ContosoRetailDW

SELECT TOP (5)
       ProductName,
       BrandName,
       UnitPrice
FROM DimProduct
ORDER BY UnitPrice DESC
