--🟣 SUM()
--Exercício 9 — Total de unidades vendidas
--A diretoria quer saber quantas unidades foram vendidas no total.
--Retorne: Total de unidades vendidas
--Tabela: FactSales
--Coluna: SalesQuantity

USE ContosoRetailDW

SELECT 
	SUM(SalesQuantity) AS 'Qnt Vendas'

FROM FactSales