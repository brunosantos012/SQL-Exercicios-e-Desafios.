--📝 Exercício A — Clientes por Estado (Tabela: DimGeography)
--Contexto: O setor de Marketing quer fazer uma campanha regional e precisa saber onde os clientes estão concentrados.
--          Eles pediram um relatório para saber quantos registros de localizações existem em cada estado.
--O que retornar: Duas colunas: StateProvinceName (mude o nome da coluna para 'Estado') e a quantidade de registros (mude para 'Total de Regiões').
--Tabela: DimGeography
--Regra 1: Agrupar pelo nome do estado (StateProvinceName).
--Regra 2: Ordenar o resultado para mostrar o estado com mais registros no topo (do maior para o menor).

USE ContosoRetailDW

SELECT 
	G.StateProvinceName AS 'Estado',
	COUNT (G.GeographyKey) AS 'Total P/Regiões'
FROM DimGeography G
GROUP BY G.StateProvinceName
ORDER BY COUNT(G.GeographyKey) DESC 