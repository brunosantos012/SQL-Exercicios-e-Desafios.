--Exercício 1
--Faça um LEFT JOIN entre:
--DimProduct
--DimProductSubcategory
--Mostre:
--Produto
--Subcategoria

USE ContosoRetailDW

SELECT 
	PD.PRODUCTNAME,
	PS.ProductSubcategoryName
FROM DimProduct AS PD
LEFT JOIN DimProductSubcategory AS PS ON
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
