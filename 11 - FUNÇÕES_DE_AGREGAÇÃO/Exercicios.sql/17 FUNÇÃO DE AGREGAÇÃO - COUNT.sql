--🔴 COUNT()
--Exercício 7 — Quantidade de produtos
--A empresa quer saber quantos produtos estão cadastrados na DimProduct.
--Retorne: Quantidade de produtos
--Tabela: DimProduct

USE ContosoRetailDW

SELECT
	COUNT(ProductName) AS 'Produtos'
FROM DimProduct