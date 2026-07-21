--°Exibir os 15 primeiros clientes cadastrados na tabela DimCustomer, apresentando o nome, sobrenome e e-mail.

USE ContosoRetailDW

SELECT TOP(15)
      FirstName AS 'NOME',
      LastName AS 'SOBRENOME',
      EmailAddress AS 'EMAIL'
FROM DimCustomer
