--°Listar os produtos que possuem as cores Black, Silver ou White, exibindo o nome do produto, a marca e a cor.

USE ContosoRetailDW

SELECT
     ProductName,
     BrandName,
     ColorName
FROM DimProduct
WHERE ColorName IN ('BLACK','SILVER','WHITE')
