SELECT soh.SalesOrderID, soh.OrderDate, c.CustomerID, p.FirstName, p.LastName, soh.TotalDue
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
WHERE soh.TotalDue = (SELECT MAX(TotalDue) FROM Sales.SalesOrderHeader);
