--desafio final de INNER JOIN (Nível Empresa)
--Contexto
--A diretoria quer montar um catálogo para uma campanha.
--Retorne:
--Nome do Produto
--Marca
--Categoria
--Subcategoria
--Preço
--Cor
--Regras:
--Categoria deve ser Computers ou Audio.
--Marca deve ser Contoso ou Litware.
--Preço entre 100 e 1000.
--Cor não pode ser NULL.
--Ordene por:
--Categoria
--Marca
--Preço (maior para menor)
USE ContosoRetailDW
SELECT
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName,
	PS.ProductSubcategoryName,
	PD.UnitPrice,
	PD.ColorName
FROM DimProduct AS PD 
INNER JOIN DimProductSubcategory AS PS
ON PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC
ON PC.ProductCategoryKey = PS.ProductCategoryKey
WHERE (PC.ProductCategoryName = 'COMPUTERS'
OR PC.ProductCategoryName = 'AUDIO')
AND (PD.BrandName = 'CONTOSO'
OR PD.BrandName = 'LITWARE')
AND (PD.UnitPrice BETWEEN 100 AND 1000)
AND PD.ColorName IS NOT NULL 
ORDER BY PC.ProductCategoryName, PD.BrandName, PD.UnitPrice DESC

