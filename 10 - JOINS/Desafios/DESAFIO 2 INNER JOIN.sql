--🔥 Desafio — Produtos da marca Contoso na categoria Home Appliances
--Contexto:
--O setor comercial quer conhecer apenas os produtos da marca Contoso que pertencem à categoria Home Appliances.
--Retorne:
--Nome do Produto
--Marca
--Categoria
--Subcategoria
--Preço
--Regras
--Utilize apenas INNER JOIN.
--Filtre apenas a marca Contoso.
--Filtre apenas a categoria Home Appliances.
--Ordene pelo nome do produto em ordem alfabética.
USE ContosoRetailDW
SELECT
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName,
	PS.ProductSubcategoryName,
	PD.UnitPrice
FROM DimProduct AS PD 
INNER JOIN DimProductSubcategory AS PS
ON PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC
ON PC.ProductCategoryKey = PS.ProductCategoryKey
WHERE PD.BrandName = 'CONTOSO'
AND PC.ProductCategoryName = 'HOME APPLIANCES'
ORDER BY PD.ProductName ASC 


