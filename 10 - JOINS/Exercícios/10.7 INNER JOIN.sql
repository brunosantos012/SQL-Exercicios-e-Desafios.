--🧠 Desafio (Nível Analista)
--Você recebeu a seguinte solicitação:
--Faça uma consulta que mostre todos os produtos da categoria 'TV and Video' cujo preço seja superior a 500.
--Retorne:
--Produto
--Marca
--Categoria
--Preço
--Ordene:
--Maior preço
--Nome do produto
USE ContosoRetailDW

SELECT
	PD.ProductName,
	PD.BrandName,
	PC.ProductCategoryName,
	PD.UnitPrice
FROM DimProductCategory AS PC 
INNER JOIN DimProductSubcategory AS PS
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimProduct AS PD
ON PD.ProductSubcategoryKey = PS.ProductSubcategoryKey
WHERE PC.ProductCategoryName = 'TV AND VIDEO'
AND PD.UnitPrice >= 500
ORDER BY PD.UnitPrice DESC, PD.ProductName ASC 
