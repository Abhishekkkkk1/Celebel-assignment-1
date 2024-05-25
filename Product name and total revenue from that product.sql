SELECT p.Name, SUM(sod.LineTotal) AS TotalRevenue
FROM Production.Product AS p
JOIN Sales.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
ORDER BY TotalRevenue DESC;
