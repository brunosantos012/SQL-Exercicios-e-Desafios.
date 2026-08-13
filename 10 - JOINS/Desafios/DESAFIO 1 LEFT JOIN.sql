--🔥 Desafio 1
-- empresa quer verificar se existem produtos sem subcategoria.
--Mostre:
--Produto
--Marca
--Subcategoria
--Utilize LEFT JOIN.
--Dica: depois tente filtrar apenas os registros onde a subcategoria é NULL.

USE ContosoRetailDW

SELECT 
	PD.ProductName,
	PD.BrandName,
	PS.ProductSubcategoryDescription
FROM DimProduct AS PD
LEFT JOIN DimProductSubcategory AS PS ON 
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
--WHERE PS.ProductSubcategoryName IS NULL 
