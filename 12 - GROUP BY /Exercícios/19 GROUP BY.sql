--Exercícios para GitHub — GROUP BY
--🔹 Exercício 1 — Produtos por marca
--Contexto
--O setor comercial quer saber como o catálogo de produtos está distribuído entre as marcas.
--Retorne: Marca, Quantidade de produtos
--Tabela: DimProduct
--Regras:
--Utilize COUNT()
--Utilize GROUP BY
--Ordene pela quantidade de produtos, do maior para o menor

USE ContosoRetailDW

SELECT
	PD.BrandName AS 'Marcas',
	COUNT (PD.ProductKey) AS 'Qnt Produtos'
FROM DimProduct PD
GROUP BY PD.BrandName
ORDER BY COUNT (PD.ProductKey) DESC 

