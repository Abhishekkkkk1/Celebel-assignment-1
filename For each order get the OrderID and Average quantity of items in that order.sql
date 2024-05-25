SELECT soh.SalesOrderID, AVG(sod.OrderQty) AS AverageQuantity
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID;
