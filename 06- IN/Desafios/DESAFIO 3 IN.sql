--Desafio Final
--O gerente pediu:
--Quero todos os produtos das marcas Contoso, Fabrikam e Litware, mas somente das cores Black e Silver e com preço superior a 1000.
--Retorne:
--Nome
--Marca
--Cor
--Preço
--Tente resolver usando IN para as marcas e também para as cores

USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE BrandName IN ('CONTOSO','FABRIKAM','LITWARE')
AND ColorName IN ('BLACK', 'SILVER')
AND UnitPrice > 1000
ORDER BY ProductName ASC, BrandName ASC