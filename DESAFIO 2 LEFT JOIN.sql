--🔥 Desafio 2
--Liste todos os produtos.
--Mesmo que não possuam categoria.
--Mostre:
--Produto
--Marca
--Categoria

USE ContosoRetailDW

SELECT 
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName
FROM DimProduct AS PD
LEFT JOIN DimProductSubcategory AS PS ON
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS PC ON
PC.ProductCategoryKey = PS.ProductCategoryKey