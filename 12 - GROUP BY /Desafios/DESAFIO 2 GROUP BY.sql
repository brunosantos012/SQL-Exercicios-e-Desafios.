-- DESAFIO 2 — Análise de produtos por marca e categoria
-- Contexto: O gerente quer comparar o desempenho das marcas dentro de cada categoria.
-- Retorne: Categoria, Marca, Quantidade de produtos, Preço médio, Maior preço
-- Regras: Utilize INNER JOIN / GROUP BY / COUNT() / AVG() / MAX()
-- Ordene por: Categoria, Preço médio, do maior para o menor.

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'Categoria',
	PD.BrandName AS 'Marcas',
	COUNT(PD.ProductKey) AS 'Qnt Produtos',
	AVG(PD.UnitPrice) AS 'Preço Médio',
	MAX(PD.UnitPrice) AS 'Maior Preço'
FROM DimProductCategory PC 
INNER JOIN DimProductSubcategory PS ON
PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct PD ON 
PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
GROUP BY PC.ProductCategoryName, PD.BrandName
ORDER BY PC.ProductCategoryName, AVG(PD.UnitPrice) DESC 
