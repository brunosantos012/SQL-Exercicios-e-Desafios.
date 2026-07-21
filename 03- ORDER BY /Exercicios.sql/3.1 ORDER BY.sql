--°Listar o nome, a marca e o preço de todos os produtos da tabela DimProduct.
--°Renomeando as colunas para facilitar a leitura e organizando os resultados do menor para o maior preço.

USE ContosoRetailDW

SELECT ProductName AS 'NOME DO PRODUTO',
       BrandName AS 'MARCA',
       UnitPrice AS 'PREÇO'
FROM DimProduct
--ORDER BY UnitPrice DESC
ORDER BY UnitPrice ASC 
