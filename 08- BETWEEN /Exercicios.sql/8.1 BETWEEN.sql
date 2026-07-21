--°Listar os produtos com preço unitário entre 100 e 500, exibindo o nome do produto, a marca, a cor e o preço, organizados do menor para o maior valor.

USE ContosoRetailDW

SELECT 
      ProductName,
      BrandName,
      ColorName,
      UnitPrice
FROM DimProduct
WHERE UnitPrice BETWEEN 100 AND 500
ORDER BY UnitPrice ASC 
