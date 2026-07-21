--°Listar os funcionários cujo estado civil seja Casado (M) ou Solteiro (S), exibindo o nome, sobrenome e estado civil
-- Com os resultados organizados em ordem alfabética.

USE ContosoRetailDW

SELECT 
     FirstName AS'NOME',
     LastName AS'SOBRENOME',
     MaritalStatus AS'ESTADO CIVIL'
FROM DimEmployee
WHERE MaritalStatus IN  ('M','S')
ORDER BY FirstName ASC, LastName ASC 
