--Exercício 3
--Mostre:
--Nome do Produto
--Marca
--Nome da Categoria
--⚠️ Aqui você vai perceber que apenas um JOIN não basta.

USE ContosoRetailDW

SELECT TOP 100
	PD.ProductName,
	PD.BrandName,
	ProductCategoryName
FROM DimProductCategory AS PC 

INNER JOIN DimProductSubcategory PS
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct PD ON 
PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
