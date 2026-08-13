--Exercício 3
--Faça um LEFT JOIN entre:
--DimProduct
--DimProductSubcategory
--DimProductCategory
--Retorne:
--Produto
--Marca
--Categoria
--Subcategoria

USE ContosoRetailDW

SELECT
	PD.PRODUCTNAME,
	PD.BRANDNAME,
	PC.PRODUCTCATEGORYNAME,
	PS.PRODUCTSUBCATEGORYNAME
FROM DimProduct AS PD 
LEFT JOIN DimProductSubcategory AS PS ON
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS PC ON 
PC.ProductCategoryKey = PS.ProductCategoryKey
	