--°Exibir apenas os 10 primeiros registros da tabela DimProduct, retornando o nome do produto, a marca e o preço unitário.

USE ContosoRetailDW

SELECT TOP (10)
       ProductName,
       BrandName,
       UnitPrice
FROM DimProduct
