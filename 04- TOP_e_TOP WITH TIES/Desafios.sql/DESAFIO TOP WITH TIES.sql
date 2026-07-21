--Desafio
--Você é Analista da Contoso.
--O diretor pediu:
--"Quero conhecer os 10 maiores preços do catálogo, mas não quero excluir produtos que tenham exatamente o mesmo preço do décimo colocado."
--Monte essa consulta.

USE ContosoRetailDW

SELECT TOP (10) WITH TIES 
     ProductName,
     UnitPrice
FROM DimProduct
ORDER BY UnitPrice DESC 