--🔥 Desafio 2
--O gerente pediu uma lista de produtos da categoria Computers.
--Mostre:
--Produto
--Marca
--Categoria
--Preço
--Ordene do maior preço para o menor.
USE ContosoRetailDW

SELECT-- TOP 10 
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName,
	PD.UnitPrice
FROM DimProductCategory AS PC
INNER JOIN DimProductSubcategory AS PS
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct AS PD
ON PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
WHERE ProductCategoryName = 'COMPUTERS'
ORDER BY UnitPrice DESC 