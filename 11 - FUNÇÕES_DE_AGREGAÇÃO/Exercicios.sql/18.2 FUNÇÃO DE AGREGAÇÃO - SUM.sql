--Exercício 10 — Valor total das vendas
--Calcule o valor total das vendas registradas.
--Tabela: FactSales
--💡 Aqui quero que você identifique sozinho qual coluna da FactSales representa o valor da venda e utilize SUM().

USE ContosoRetailDW

SELECT 
	SUM (SalesQuantity) AS 'Total Vendas'
FROM FactSales