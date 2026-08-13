--🔹 Exercício 2 — Análise de preços por marca
--Contexto: O gerente comercial quer comparar os preços praticados pelas diferentes marcas.
--Retorne:
--Marca
--Menor preço
--Maior preço
--Preço médio
--Tabela: DimProduct

USE ContosoRetailDW

SELECT 
	PD.BrandName AS 'Marcas',
	MIN (PD.UnitPrice) AS 'Preço MINIMO',
	MAX (PD.UnitPrice) AS 'Preço MAXIMO',
	AVG (PD.UnitPrice) AS 'Preço MEDIO'
FROM DimProduct PD 
GROUP BY PD.BrandName