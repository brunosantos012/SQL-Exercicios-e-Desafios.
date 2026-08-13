-- DESAFIO FINAL — Portfólio
-- Contexto: A diretoria está analisando o catálogo para definir uma estratégia comercial.
-- Eles querem analisar apenas produtos com preço entre R$ 100 e R$ 1.000.
-- Para cada categoria e marca, apresente:Categoria, Marca, Quantidade de produtos, Menor preço, Maior preço, Preço médio
-- Utilize:INNER JOIN/ WHERE/ BETWEEN/ GROUP BY/ COUNT()/ MIN()/ MAX()/ AVG()/ ORDER BY
-- Filtros:UnitPrice >= 100 / UnitPrice <= 1000
-- Ordenação:Categoria — A → Z / Preço médio — maior → menor 

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'Categoria',
	PD.BrandName AS 'Marca',
	COUNT(PD.ProductKey) AS 'Qnt Produtos',
	MIN(PD.UnitPrice) AS 'Menor Preço',
	MAX(PD.UnitPrice) AS 'Maior Preço',
	AVG(PD.UnitPrice) AS 'Preço Médio'
FROM DimProductCategory PC 
INNER JOIN DimProductSubcategory PS ON 
PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct PD ON 
PD.ProductSubcategoryKey = PS.ProductSubcategorykey 
WHERE PD.UnitPrice BETWEEN 100 AND 1000
GROUP BY PC.ProductCategoryName, PD.BrandName
ORDER BY PC.ProductCategoryName DESC, AVG(PD.UnitPrice) DESC 