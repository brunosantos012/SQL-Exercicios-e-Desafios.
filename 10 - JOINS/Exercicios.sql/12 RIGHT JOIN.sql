--📚 Exercício 1 - Primeiro RIGHT JOIN
--Objetivo: listar todas as subcategorias, mesmo que não possuam produtos.
--Retorne:
--Nome do Produto
--Nome da Subcategoria
--Tabelas:
--DimProduct
--DimProductSubcategory
--Regras
--Utilize RIGHT JOIN.
--Ordene pelo nome da subcategoria. 

USE ContosoRetailDW

SELECT 
	PD.ProductName AS 'Nome Do Produto',
	PS.ProductSubcategoryName AS 'Nome Da Subcategoria'
FROM DimProduct AS PD
RIGHT JOIN DimProductSubcategory AS PS ON 
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
ORDER BY PS.ProductSubcategoryName
