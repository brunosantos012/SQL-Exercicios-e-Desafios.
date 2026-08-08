--📦 Tarefa 3: Análise de Vendas na Categoria 'Audio' ou 'TV and Video'
--Cenário de Negócio:
--O diretor de operações está organizando o estoque de eletrônicos e solicitou um levantamento detalhado das vendas
--das categorias de eletrônicos para entender quais produtos têm maior saída.
--Colunas a retornar:
--Categoria (ProductCategoryName)
--Subcategoria (ProductSubcategoryName)
--Produto (ProductName)
--Cor (ColorName)
--Quantidade Vendida (SalesQuantity)
--Preço Unitário (UnitPrice)

USE ContosoRetailDW

SELECT 
	PC.ProductCategoryName AS 'Nome Da Categoria.',
	PS.ProductsubcategoryName AS 'Nome Da Subcategoria.',
	PD.productName AS 'Nome Do Produto.',
	PD.ColorName AS 'cor.',
	FS.SalesQuantity AS 'Quantidade Vendida.',
	FS.UnitPrice AS 'Preço Unitário.'
FROM FactSales AS FS 
INNER JOIN DimProduct AS PD ON PD.ProductKey = FS.ProductKey
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
WHERE PC.ProductCategoryName = 'Audio' or  PC.ProductCategoryName = 'Tv and Video'
ORDER BY PC.ProductCategoryName, FS.SalesQuantity DESC