--📚 Exercício 2
--A empresa deseja visualizar todas as categorias cadastradas, mesmo que não tenham nenhuma subcategoria vinculada.
--Retorne:Categoria
--Subcategoria
--Tabelas:
--DimProductCategory
--DimProductSubcategory
--Regras
--Utilize RIGHT JOIN.
--Ordene pela categoria.

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'CATEGORIA',
	PS.ProductSubcategoryName AS 'SUBCATEGORIA'
FROM DimProductSubcategory AS PS 
RIGHT JOIN DimProductCategory AS PC ON 
PC.ProductCategoryKey = PS.ProductCategoryKey
ORDER BY PC.ProductCategoryName