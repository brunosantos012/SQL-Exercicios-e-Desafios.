--°Exibir os 20 produtos com menor preço da tabela DimProduct, apresentando o nome do produto, a marca e o preço unitário.

USE ContosoRetailDW

SELECT TOP (20)
       ProductName,
       BrandName,
       UnitPrice
FROM DimProduct
ORDER BY UnitPrice ASC
