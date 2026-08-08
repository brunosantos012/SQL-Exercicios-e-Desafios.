--Exercício 1 - Seu primeiro JOIN
--Objetivo: relacionar produtos com suas subcategorias.
--Mostre:
--Nome do Produto
--Nome da Subcategoria
--Tabelas:                                            --PRODUCTSUBCATEGORYKEY
--DimProduct
--DimProductSubcategory

USE ContosoRetailDW

SELECT
	ProductName,
    DimProductSubcategory.ProductSubcategoryName
FROM DimProduct

INNER JOIN DimProductSubcategory
ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey 

