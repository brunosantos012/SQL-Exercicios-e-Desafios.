--Exercício 2 - Selecionando colunas

--Retorne apenas:
--Nome do produto
--Cor
--Preço
USE ContosoRetailDW
	SELECT	 ProductName,
			 ColorName,
			 UnitPrice	
		FROM DimProduct