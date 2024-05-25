SELECT soa.CountryRegionCode AS Country, SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderAddress AS soa ON soh.SalesOrderID = soa.SalesOrderID
GROUP BY soa.CountryRegionCode;
