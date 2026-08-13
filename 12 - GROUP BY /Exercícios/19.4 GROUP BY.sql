--🔹 Exercício 4 — Faixa de preço
--Contexto: O setor comercial quer analisar os produtos que estão dentro de uma faixa de preço específica.
--Critério: Preço entre 100 e 1000
--Retorne:
--Marca
--Quantidade de produtos
--Maior preço
--Menor preço
--Regras: Utilize BETWEEN/ Utilize WHERE/ Utilize GROUP BY/ Utilize COUNT()/ Utilize MAX()/ Utilize MIN()

USE ContosoRetailDW

SELECT 
	PD.BrandName AS 'Marcas',
	COUNT(PD.ProductKey) AS 'Qnt Produtos',
	MAX(PD.UnitPrice) AS 'Maior Preço',
	MIN(PD.UnitPrice) AS 'Menor Preço'
FROM DimProduct PD
WHERE PD.UnitPrice BETWEEN 100 AND 1000
GROUP BY PD.BrandName 