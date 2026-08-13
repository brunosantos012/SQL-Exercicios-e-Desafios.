--Exercício 6 — Média de unidades vendidas
--Calcule a quantidade média de produtos vendidos por venda.
--Retorne: Média de unidades vendidas
--Tabela: FactSales
--Coluna: SalesQuantity

USE ContosoRetailDW

SELECT 
	AVG(SalesQuantity) AS 'Produtos Vendidos'
FROM FactSales