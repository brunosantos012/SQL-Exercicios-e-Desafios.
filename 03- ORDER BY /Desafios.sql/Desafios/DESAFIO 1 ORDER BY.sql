--Desafio 1
--Na tabela DimProduct, mostre:
--Nome
--Marca
--Cor
--Preço
--Somente produtos da cor Black, ordenados do mais caro para o mais barato.
 
 USE ContosoRetailDW
 SELECT ProductName AS 'NOME DO PRODUTO',
        BrandName AS 'MARCA',
        ColorName AS 'COR',
        UnitPrice AS 'PREÇO'
 FROM DimProduct
 WHERE ColorName = 'BLACK'
 ORDER BY UnitPrice DESC, ProductName ASC