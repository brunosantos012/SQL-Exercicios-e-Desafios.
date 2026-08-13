--Desafio da Aula
--Mostre:
--Nome do produto
--Marca
--Cor
--Preço
--Somente produtos:
--Cor Black
--Preço maior que 300
--Esse exercício combina duas condições no WHERE.

USE ContosoRetailDW
SELECT	ProductName AS 'NOME DO PRODUTO',
	    BrandName AS 'MARCA DO PRODUTO',
		ColorName AS 'COR',
		UnitPrice AS 'PREÇO DO PRODUTO'
FROM DimProduct
	WHERE ColorName = 'BLACK' AND UnitPrice >= 300