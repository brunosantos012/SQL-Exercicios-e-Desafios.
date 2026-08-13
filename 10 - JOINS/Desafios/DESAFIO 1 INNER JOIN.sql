--🔥 Desafio — Produtos da categoria Computers
--Contexto:
--O gerente de tecnologia quer analisar apenas os produtos da categoria Computers.
--Retorne:
--Nome do Produto
--Marca
--Categoria
--Subcategoria
--Preço
--Regras
--Utilize INNER JOIN.
--Ordene pelo preço, do maior para o menor.
--Não utilize SELECT *.
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
WHERE PC.ProductCategoryName = 'COMPUTERS'
ORDER BY PD.UnitPrice DESC 
