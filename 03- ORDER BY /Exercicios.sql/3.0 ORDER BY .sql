--° O banco de dados possui diversos produtos, mas é necessário identificar apenas aqueles com preço acima de R$ 1.000 e apresentá-los em ordem decrescente de valor.

USE ContosoRetailDW

SELECT ProductName,
       BrandName,
       UnitPrice
 FROM DimProduct
 WHERE UnitPrice >1000
 ORDER BY UnitPrice DESC
