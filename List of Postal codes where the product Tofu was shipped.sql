SELECT DISTINCT soa.PostalCode
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product AS p ON sod.ProductID = p.ProductID
JOIN Sales.SalesOrderAddress AS soa ON soh.SalesOrderID = soa.SalesOrderID
WHERE p.Name = 'Tofu';
