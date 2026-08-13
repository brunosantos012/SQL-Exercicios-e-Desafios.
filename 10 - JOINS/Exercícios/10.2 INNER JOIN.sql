--Exercício 2
--Mostre:                         --PRODUCTSUBCATECOREGORYKEY 
--Nome do Produto
--Marca
--Nome da Subcategoria

USE ContosoRetailDW

SELECT
	ProductName,
	BrandName,
	DimProductSubcategory.ProductSubcategoryName

FROM DimProduct

INNER JOIN DimProductSubcategory ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey


