--Exercício 2 — Maior quantidade vendida
--O gerente quer saber qual foi a maior quantidade de unidades vendidas em uma única venda.
--Retorne: Maior quantidade vendida
--Tabela: FactSales
--Coluna para analisar: SalesQuantity

USE ContosoRetailDW

SELECT 
	MAX (SalesQuantity) AS'Vendas'

FROM FactSales