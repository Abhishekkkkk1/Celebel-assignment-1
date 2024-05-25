SELECT soh.SalesOrderID, 
       MIN(sod.OrderQty) AS MinimumQuantity, 
       MAX(sod.OrderQty) AS MaximumQuantity
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
GROUP BY soh.SalesOrderID;
