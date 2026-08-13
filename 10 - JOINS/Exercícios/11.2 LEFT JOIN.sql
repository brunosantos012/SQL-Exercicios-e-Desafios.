--Exercício 2
--Mostre:
--Produto
--Marca
--Subcategoria
--Utilizando LEFT JOIN.

USE ContosoRetailDW

SELECT 
	PD.ProductName,
	PD.BrandName,
	PS.ProductSubcategoryName
FROM DimProduct AS PD
LEFT JOIN DimProductSubcategory AS PS ON 
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey