SELECT TOP 10 c.CustomerID, SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY TotalSales DESC;
