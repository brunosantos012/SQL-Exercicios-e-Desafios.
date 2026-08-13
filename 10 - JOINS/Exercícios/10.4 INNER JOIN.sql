--🔥 Desafio 1
--O gerente quer conhecer os produtos da categoria Audio.
--Retorne:
--Produto
--Marca
--Categoria

USE ContosoRetailDW

SELECT 
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName
	--PD.UnitPrice
FROM DimProductCategory AS PC 
INNER JOIN DimProductSubcategory AS PS 
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct AS PD
ON PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
WHERE ProductCategoryName = 'AUDIO'
--ORDER BY UnitPrice DESC