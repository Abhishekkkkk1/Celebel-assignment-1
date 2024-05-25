SELECT c.CustomerID, p.FirstName, p.LastName
FROM Sales.Customer AS c
JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
WHERE soh.CustomerID IS NULL;
