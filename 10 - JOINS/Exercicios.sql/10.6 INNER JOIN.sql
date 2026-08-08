--🔥 Desafio 3
--A empresa quer descobrir quais produtos pertencem à subcategoria Cell phones.
--Mostre:
--Produto
--Marca
--Subcategoria
--Preço
--Ordene pelo nome do produto.
USE ContosoRetailDW
SELECT
	PD.ProductName,
	PD.BrandName,
	PS.ProductSubcategoryName,
	PD.UnitPrice
FROM DimProductCategory AS PC 
INNER JOIN DimProductSubcategory AS PS
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct AS PD
ON PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
WHERE PS.ProductSubcategoryName LIKE  'CELL PHONES%'
ORDER BY PD.ProductName


