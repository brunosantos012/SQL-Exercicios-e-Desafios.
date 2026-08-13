--🟢 MIN()
--Exercício 3 — Menor preço
--Descubra qual é o menor preço unitário cadastrado nos produtos.
--Retorne: Menor preço
--Tabela: DimProduct

USE ContosoRetailDW

SELECT 
	MIN(UnitPrice) AS 'Preço Unitaário'
FROM DimProduct