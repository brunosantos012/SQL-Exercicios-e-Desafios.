--Desafio Final (Simulação de empresa)
--Você recebeu esta solicitação:
--"Preciso identificar os cinco produtos mais caros da marca Contoso."
--Monte uma consulta que retorne:
--Nome
--Marca
--Preço
--Aplicando:
--Filtro pela marca.
--Ordenação do maior para o menor preço.
--Retorno de apenas cinco registros.

USE ContosoRetailDW
SELECT TOP(5)
      ProductName,
      BrandName,
      UnitPrice
FROM DimProduct
WHERE BrandName = 'CONTOSO' 
ORDER BY UnitPrice DESC 
