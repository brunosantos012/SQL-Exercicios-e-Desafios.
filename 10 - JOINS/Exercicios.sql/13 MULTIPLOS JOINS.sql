--📊 Tarefa 1: Relatório de Vendas de Produtos da Marca 'Contoso'
--Cenário de Negócio:
--O gerente de produto quer analisar o desempenho detalhado dos itens da marca Contoso.
--Ele precisa ver quais produtos foram vendidos, suas respectivas subcategorias e categorias
--O nome da promoção aplicada e a quantidade vendida.

USE ContosoRetailDW

SELECT
	PD.ProductName AS 'Nome do Produto.', 
	PD.BrandName AS 'Nome Da Marca.',
	PC.ProductCategoryName AS 'Nome Da Categoria.',
	PS.ProductSubcategoryName AS 'Nome Da Subcategoria.',
	PM.PromotionName AS 'Nome Da Promoção.',
	FS.SalesQuantity AS 'Quantidade de vendas.'
FROM DimProduct AS PD
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
INNER JOIN FactSales AS FS ON FS.ProductKey = PD.ProductKey
INNER JOIN DimPromotion AS PM ON PM.PromotionKey = FS.PromotionKey
WHERE PD.BrandName = 'CONTOSO'
ORDER BY FS.SalesQuantity DESC