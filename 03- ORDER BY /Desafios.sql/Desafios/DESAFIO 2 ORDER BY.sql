--Desafio 2 (Nível Analista)
--O gerente pediu:
--"Quero visualizar os produtos da marca Contoso ordenados pelo menor preço."
--Mostre:
--Nome
--Marca
--Preço
--Aplique:
--Filtro pela marca.
--Ordenação pelo preço crescente.

USE ContosoRetailDW
SELECT ProductName,
       BrandName,
       UnitPrice
FROM DimProduct
WHERE BrandName = 'CONTOSO' 
ORDER BY UnitPrice ASC 