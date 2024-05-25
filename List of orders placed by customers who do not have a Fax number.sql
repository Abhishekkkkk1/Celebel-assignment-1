SELECT soh.SalesOrderID, soh.OrderDate, soh.TotalDue
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
WHERE c.CustomerID NOT IN (
    SELECT CustomerID
    FROM Person.PersonPhone
    WHERE PhoneNumberTypeID = 'FAX'
);
