--🔥 Desafio Final - Comparando LEFT e RIGHT JOIN
--Contexto
--O gerente recebeu duas consultas diferentes: uma usando LEFT JOIN e outra usando RIGHT JOIN.
--Ele quer saber se elas retornam o mesmo resultado.
--Faça uma consulta utilizando RIGHT JOIN.
--Retorne:
--Nome do Produto
--Marca
--Categoria
--Subcategoria
--Regras
--Exiba todas as categorias, mesmo que não possuam produtos.
--Ordene por:
--Categoria
--Subcategoria
--Produto

USE ContosoRetailDW

SELECT 
	PD.ProductName AS 'Nome Do Produto',
	PD.BrandName AS 'Nome Da Marca', 
	PC.ProductCategoryName AS 'Nome Da Categoria', 
	PS.ProductSubcategoryName AS 'Nome Da Subcategoria'
FROM DimProduct AS PD 
RIGHT JOIN DimProductSubcategory AS PS ON 
PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
RIGHT JOIN DimProductCategory AS PC ON 
PC.ProductCategoryKey = PS.ProductCategoryKey
ORDER BY PC.ProductCategoryName, PS.ProductSubcategoryName, PD.ProductName

--LEFT JOIN 

USE ContosoRetailDW

SELECT 
	PD.ProductName AS 'Nome Do Produto',
	PD.BrandName AS 'Nome Da Marca', 
	PC.ProductCategoryName AS 'Nome Da Categoria', 
	PS.ProductSubcategoryName AS 'Nome Da Subcategoria'
FROM DimProductCategory AS PC 
LEFT JOIN DimProductSubcategory AS PS ON 
PS.ProductCategoryKey = PC.ProductCategoryKey
LEFT JOIN DimProduct AS PD ON 
PD.ProductSubcategoryKey = PS.ProductSubcategoryKey 
ORDER BY PC.ProductCategoryName, PS.ProductSubcategoryName, PD.ProductName