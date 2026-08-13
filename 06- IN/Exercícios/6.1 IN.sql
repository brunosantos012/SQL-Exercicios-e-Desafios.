USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     UnitPrice
FROM DimProduct
WHERE BrandName IN ('CONTOSO', 'FABRIKAM','LITWARE')
