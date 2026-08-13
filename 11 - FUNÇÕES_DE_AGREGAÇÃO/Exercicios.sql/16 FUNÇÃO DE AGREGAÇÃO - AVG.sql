--🟡 AVG()
--Exercício 5 — Preço médio
--O setor financeiro quer saber qual é o preço médio dos produtos cadastrados.
--Retorne: Preço médio
--Tabela: DimProduct
--Coluna: UnitPrice

USE ContosoRetailDW

SELECT 
	AVG(UnitPrice) AS 'Preço Produtos'
FROM DimProduct