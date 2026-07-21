--°Listar os produtos que não pertencem às marcas CONTOSO e FABRIKAM, exibindo o nome do produto, a marca e o preço unitário, organizados do maior para o menor preço.

USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE BrandName NOT IN ('CONTOSO','FABRIKAM')
ORDER BY UnitPrice DESC 
