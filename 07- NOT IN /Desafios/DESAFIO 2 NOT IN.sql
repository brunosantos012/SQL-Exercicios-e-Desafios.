--O gerente quer encontrar produtos para uma campanha internacional.
--Ele não aceita produtos das marcas:
--Contoso                                       --Retorne:
--Fabrikam                                                 --Nome
--Também não aceita as cores:                              --Marca  
--Black                                                    --Cor
--Silver                                                   --Preço
--Além disso:                                              --Ordene pelo maior preço  
--preço maior que 500

USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE BrandName NOT IN ('CONTOSO','FABRIKAM')
AND ColorName NOT IN ('BLACK','SILVER')
AND UnitPrice >500
ORDER BY UnitPrice DESC