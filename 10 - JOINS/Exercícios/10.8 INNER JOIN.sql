-- Missão Extra
--Descubra sozinho como retornar:
--Produto
--Marca
--Categoria
--Subcategoria
--Preço
--Tudo em uma única consulta.
USE ContosoRetailDW
SELECT --TOP10
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName,
	PS.ProductSubcategoryName,
	PD.UnitPrice
FROM DimProductCategory AS PC
INNER JOIN DimProductSubcategory AS PS
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct AS PD
ON PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
--WHERE PD.BrandName = 'CONTOSO'
--ORDER BY PD.UnitPrice DESC 