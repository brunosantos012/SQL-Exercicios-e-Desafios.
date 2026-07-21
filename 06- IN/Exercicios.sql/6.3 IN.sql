USE ContosoRetailDW
SELECT
     ProductName,
     BrandName,
     ColorName
FROM DimProduct
WHERE ColorName IN ('BLACK','SILVER','WHITE')
