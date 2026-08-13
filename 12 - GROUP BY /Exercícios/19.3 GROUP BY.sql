--🔎 GROUP BY + WHERE
--🔹 Exercício 3 — Produtos acima de R$ 500
--Contexto: A empresa quer analisar apenas produtos considerados de maior valor.
--Critério: Produtos com UnitPrice maior que 500.
--Retorne:
--Marca
--Quantidade de produtos
--Preço médio

USE ContosoRetailDW

SELECT 
	PD.BrandName AS 'Marcas',
	COUNT(PD.ProductKey) AS 'Qnt Produtos',
	AVG(PD.UnitPrice) AS 'Preço Médio'
FROM DimProduct PD
WHERE PD.UnitPrice > 500
GROUP BY PD.BrandName 