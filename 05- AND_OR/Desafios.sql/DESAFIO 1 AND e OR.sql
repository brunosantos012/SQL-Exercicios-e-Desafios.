--Desafio 1                 --Mostre:
--O gerente pediu:                   --Nome
--Produtos:                          --Marca                    
--Black                              --Cor
--Marca Contoso                      --Preço
--Preço maior que 500    
USE ContosoRetailDW

SELECT --TOP 5 WITH TIES 
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE ColorName ='BLACK'
AND BrandName = 'CONTOSO'
AND UnitPrice > 500 
--ORDER BY UnitPrice ASC 