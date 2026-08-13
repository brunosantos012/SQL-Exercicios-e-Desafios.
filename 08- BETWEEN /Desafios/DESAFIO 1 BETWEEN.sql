--Desafio 1 - Filtro Completo                  --Retorne:
--Mostrar produtos:                            --Nome
--Marca Contoso                                --Marca
--Preço entre 200 e 1200                       --Cor
--Cor Black ou Silver                          --Preço
                                               --Ordene pelo preço

USE ContosoRetailDW
SELECT 
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE BrandName = 'CONTOSO'
AND UnitPrice BETWEEN 200 AND 1200
AND ColorName IN ('BLACK','SILVER')
ORDER BY UnitPrice ASC