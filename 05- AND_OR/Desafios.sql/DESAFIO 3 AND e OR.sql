--Desafio Final (Nível Analista              --Retorne:      
--Você recebeu uma solicitação:                       --Nome
--Quero todos os produtos premium.                    --Marca
--Definição de premium                                --Cor
--Marca = Contoso OU Fabrikam                         --Preço
--Cor = Black
--Preço maior que 2000

USE ContosoRetailDW

SELECT 
     ProductName,
     BrandName,
     ColorName,
     UnitPrice
FROM DimProduct
WHERE (BrandName = 'CONTOSO' OR BrandName = 'FABRIKAM')
AND ColorName ='BLACK' 
AND UnitPrice > 2000