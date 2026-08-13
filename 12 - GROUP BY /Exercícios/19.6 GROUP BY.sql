--🔹 Exercício 6 — Análise de preço por categoria
--Contexto: O setor comercial quer comparar os preços dos produtos entre as categorias.
--Retorne: Categoria, Quantidade de produtos, Preço médio, Maior preço
--Tabelas: DimProduct -> DimProductSubcategory -> DimProductCategory
--Regras:
--Utilize INNER JOIN
--Utilize COUNT()
--Utilize AVG()
--Utilize MAX()
--Utilize GROUP BY
--Ordene pelo preço médio, do maior para o menor.

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'Categoria',
	COUNT(PD.ProductKey) AS 'Qnt Produtos',
	AVG(PD.UnitPrice)AS 'Preço Médio',
	MAX(PD.UnitPrice) AS 'Maior Preço'
FROM DimProduct PD
INNER JOIN DimProductSubcategory PS ON
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory PC ON 
PC.ProductCategoryKey =  PS.ProductCategoryKey
GROUP BY PC.ProductCategoryName
ORDER BY AVG(PD.UnitPrice) DESC
