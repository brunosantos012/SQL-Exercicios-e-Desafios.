---🎟️ Tarefa 2: Auditoria de Vendas com Promoções Ativas
--Cenário de Negócio:
--A equipe de marketing realizou campanhas promocionais e quer auditar as vendas que receberam descontos reais.
--(não quer ver a promoção padrão/sem desconto 'No Discount').

USE ContosoRetailDW

SELECT
	FS.SalesKey AS 'ID Da Venda.',
	PD.ProductName AS 'Nome Do Produto.',
	PD.BrandName AS 'Nome Da Marca.',
	PM.PromotionName AS 'Nome Da Promoção.',
	PM.DiscountPercent AS 'Percentual De Desconto.',
	FS.SalesAmount AS 'Valor Total Da Venda.'
FROM FactSales AS FS 
INNER JOIN DimPromotion AS PM ON PM.PromotionKey = FS.PromotionKey
INNER JOIN DimProduct AS PD ON PD.ProductKey = FS.ProductKey
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = PD.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
WHERE PM.PromotionName <> 'No Discount'
ORDER BY PC.ProductCategoryName, PS.ProductSubcategoryName, FS.SalesAmount DESC 