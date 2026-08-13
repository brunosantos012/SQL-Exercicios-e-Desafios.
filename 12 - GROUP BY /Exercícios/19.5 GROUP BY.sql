--🔗 GROUP BY + JOIN
--🔹 Exercício 5 — Produtos por categoria
--Contexto: A diretoria quer saber quantos produtos existem em cada categoria.
--Retorne: Categoria, Quantidade de produtos
--Tabelas: DimProduct -> DimProductSubcategory -> DimProductCategory
--Regras:
--Utilize INNER JOIN
--Utilize COUNT()
--Utilize GROUP BY
--Ordene pela quantidade de produtos, do maior para o menor.

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'Categoria',
	COUNT(PD.ProductKey) AS 'Qnt Produto'
FROM DimProduct PD 
INNER JOIN DimProductSubcategory AS PS ON
PS.ProductSubcategorykey = PD.ProductSubcategoryKey
INNER JOIN DIMProductCategory PC ON
PC.ProductCategoryKey = PS.ProductCategoryKey 
GROUP BY PC.ProductCategoryName
ORDER BY COUNT(PD.ProductKey) DESC 

