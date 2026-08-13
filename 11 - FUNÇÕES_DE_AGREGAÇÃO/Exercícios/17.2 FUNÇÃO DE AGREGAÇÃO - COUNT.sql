--Exercício 8 — Quantidade de vendas
--Descubra quantos registros de vendas existem na tabela FactSales.
--Retorne: Quantidade de vendas
--Tabela: FactSales

USE ContosoRetailDW

SELECT 
	COUNT(SalesQuantity) AS 'Qnt Vendas'
FROM FactSales