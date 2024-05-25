SELECT soh.SalesOrderID, soh.OrderDate, c.CustomerID, p.FirstName, p.LastName
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
WHERE soh.OrderDate = (SELECT MIN(OrderDate) FROM Sales.SalesOrderHeader);
