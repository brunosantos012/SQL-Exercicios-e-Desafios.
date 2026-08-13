--Exercício 3.1

--Tabela:
--DimProduct
--Mostre:
--Nome do produto
--Marca
--Preço
--Somente produtos cujo preço seja maior que 500.

    USE ContosoRetailDW
   SELECT ProductName AS'NOME DO PRODUTO',
          BrandName AS'MARCA DO PRODUTO',
          UnitPrice AS'PREÇO DO PRODUTO',
          ColorName AS 'COR DO PRODUTO'
   FROM DimProduct
    --WHERE UNITPRICE > 500 
       --WHERE ColorName = 'BLACK'
       WHERE ColorName = 'RED'