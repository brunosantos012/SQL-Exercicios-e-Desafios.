--🔥 DESAFIO 1 — Análise por categoria
--Contexto: A diretoria quer um resumo completo do catálogo de produtos.
--Para cada categoria, apresente: Categoria, Quantidade de produtos, Menor preço, Maior preço, Preço médio
--Regras: INNER JOIN / GROUP BY / COUNT() / MIN() / MAX() / AVG()
--ORDER BY : Ordene pelo preço médio, do maior para o menor.

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'Categoria',
	COUNT(PD.ProductKey) AS 'Qnt Produtos',
	MIN(PD.UnitPrice) AS 'Menor Preço',
	MAX(PD.UnitPrice) AS 'Maior Preço',
	AVG(PD.UnitPrice) AS 'Preço Médio'
FROM DimProduct PD
INNER JOIN DimProductSubcategory PS ON
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory PC ON
PC.ProductCategoryKey = PS.ProductCategoryKey
GROUP BY PC.ProductCategoryName
ORDER BY AVG(PD.UnitPrice) DESC 
