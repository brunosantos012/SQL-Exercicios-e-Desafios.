--Desafio 2
--O gerente pediu uma lista dos produtos mais baratos da cor Black.
--Mostre:
--Nome
--Marca
--Cor
--Preço
--Retorne apenas os 15 primeiros.

USE ContosoRetailDW
SELECT TOP (15)
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName = 'BLACK' 
ORDER BY UnitPrice ASC