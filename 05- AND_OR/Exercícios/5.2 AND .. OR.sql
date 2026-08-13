USE ContosoRetailDW

SELECT 
     MaritalStatus,
     Gender
FROM DimCustomer
WHERE MaritalStatus ='M'
AND Gender ='M'
 