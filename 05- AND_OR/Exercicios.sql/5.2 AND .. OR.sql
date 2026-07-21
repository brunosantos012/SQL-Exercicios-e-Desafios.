--°Consultar os clientes que atendem simultaneamente a dois critérios: serem casados e do sexo masculino.

USE ContosoRetailDW

SELECT 
     MaritalStatus,
     Gender
FROM DimCustomer
WHERE MaritalStatus ='M'
AND Gender ='M'
 
