SELECT DISTINCT p.Name AS ProductName
FROM Production.Product AS p
JOIN Sales.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader AS soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN Sales.SalesOrderAddress AS soa ON soh.SalesOrderID = soa.SalesOrderID
WHERE soa.CountryRegionCode = 'FR';
