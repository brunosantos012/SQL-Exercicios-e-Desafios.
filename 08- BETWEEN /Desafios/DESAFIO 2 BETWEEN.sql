--Desafio Final (Nível Analista)
--A diretoria está montando um catálogo.                      --Retorne:        
--Critérios:                                                  --Nome
--Marca em:                                                   --Marca
--Contoso                                                     --Cor
--Fabrikam                                                    --Preço
--Litware                                                     --Ordene do maior para o menor preço.
--Cor em:
--Black
--Silver
--Preço entre 800 e 2500

USE ContosoRetailDW

SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE BrandName IN ('CONTOSO', 'FABRIKAM','LITWARE')
AND ColorName IN ('BLACK','SILVER')
AND UnitPrice BETWEEN 800 AND 2500
ORDER BY UnitPrice DESC