--🧠 Desafio Final (Nível Analista)
--A diretoria quer um relatório de qualidade dos dados.
--Retorne:
--Produto
--Marca
--Categoria
--Subcategoria
--Utilize LEFT JOIN.
USE ContosoRetailDW

SELECT 
	PD.Productname AS 'Nome Do Produto',
	PD.Brandname AS 'Nome Da Marca',
	PC.ProductCategoryName AS 'Nome Da Categoria',
	PS.ProductSubcategoryName AS 'Nome Da Subcategoria' 
FROM DimProduct AS PD 
LEFT JOIN DimProductSubcategory AS PS ON
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS PC ON 
PC.ProductCategoryKey = PS.ProductCategoryKey
