--🔵 MAX()
--Exercício 1 — Maior preço
--A empresa quer descobrir qual foi o maior preço unitário registrado na tabela DimProduct.
--Retorne: Maior preço

USE ContosoRetailDW

SELECT 
	MAX(UnitPrice) AS 'Preço Unitário'
FROM DimProduct