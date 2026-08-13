--Exercício 4 — Menor quantidade vendida
-- qual foi a menor quantidade de produtos vendida em uma venda.
--Retorne: Menor quantidade vendida
--Tabela: FactSales

USE ContosoRetailDW

SELECT 
	MIN(SalesQuantity) AS 'Qnt Produtos'
FROM FactSales