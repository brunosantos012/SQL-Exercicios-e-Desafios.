--Desafio 1                                     --Cor não esteja em
--Mostrar produtos que:                         --Black
--Marca não esteja em                           --White
--Contoso                                       --Preço maior que 1000.
--Fabrikam                                      --Ordene do maior para o menor.
--Litware

USE ContosoRetailDW
SELECT
      ProductName,
      BrandName,
      ColorName,
      UnitPrice
FROM DimProduct
WHERE BrandName NOT IN ('CONTOSO','FABRIKAM','LITWARE')
AND ColorName NOT IN ('BLACK','WHITE')
AND UnitPrice > 1000
ORDER BY UnitPrice DESC