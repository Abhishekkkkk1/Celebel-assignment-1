SELECT soh.SalesOrderID, soh.OrderDate
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderAddress AS soa ON soh.SalesOrderID = soa.SalesOrderID
WHERE soa.CountryRegionCode = 'CA';
