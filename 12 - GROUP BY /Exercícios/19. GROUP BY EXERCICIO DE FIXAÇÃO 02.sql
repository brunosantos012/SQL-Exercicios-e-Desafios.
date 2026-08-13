--📝 Exercício B — Total Gasto por Canal de Venda (Tabela: FactSales)
--Contexto: O diretor financeiro quer saber qual canal de vendas (Loja Física, Online, Catálogo, etc.) gera mais faturamento para a empresa. 
--          Aqui vamos trabalhar com a tabela Fato, então lembre-se da nossa conversa anterior sobre faturamento em dinheiro!
--O que retornar: Duas colunas: channelKey (mude para 'Canal de Venda') e o valor total financeiro vendido (mude para 'Faturamento Total').
--Tabela: FactSales
--Regra 1: Como queremos o valor total em dinheiro acumulado por canal, utilize a função SUM() na coluna SalesAmount.
--Regra 2: Agrupar pela chave do canal (channelKey).
--Regra 3: Ordene o relatório pelo maior faturamento primeiro.

USE ContosoRetailDW

SELECT 
	FS.ChannelKey AS 'Canal De Vendas',
	SUM(FS.SalesAmount) AS 'Faturamento Total'
FROM FactSales FS
GROUP BY FS.channelKey
ORDER BY SUM(FS.SalesAmount) DESC 