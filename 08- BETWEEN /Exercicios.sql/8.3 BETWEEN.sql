--Listar os produtos da cor Black com preço unitário entre 500 e 2.000, exibindo o nome do produto, a marca, a cor e o preço, organizados do menor para o maior valor.

USE ContosoRetailDW

SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName = 'BLACK'
AND UnitPrice BETWEEN 500 AND 2000
ORDER BY UnitPrice ASC 
