--DesafiO (Nível Analista)
--O setor de marketing quer fazer uma campanha apenas para acessórios.                --Retorne:
--Liste produtos que:                                                                       --Nome
--Contenham USB OU Cable no nome.                                                           --Marca
--Marca comece com South OU Cont.                                                           --Preço
--Preço entre 5 e 500.                                                                      --Ordene do maior preço para o menor.

USE ContosoRetailDW
SELECT
      ProductName,
      BrandName,
      UnitPrice
FROM DimProduct
WHERE (ProductName LIKE '%USB%' OR ProductName LIKE '%CABLE%')
AND (BrandName LIKE 'SOUTH%' OR BrandName LIKE 'CONT%')
AND UnitPrice BETWEEN 5 AND 500 
ORDER BY UnitPrice ASC 