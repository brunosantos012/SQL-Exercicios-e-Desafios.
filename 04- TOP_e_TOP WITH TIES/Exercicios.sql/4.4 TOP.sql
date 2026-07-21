USE ContosoRetailDW

SELECT TOP(15)
      FirstName AS 'NOME',
      LastName AS 'SOBRENOME',
      EmailAddress AS 'EMAIL'
FROM DimCustomer