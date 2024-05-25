SELECT 
    p.FirstName + ' ' + p.LastName AS ContactName,
    COUNT(soh.SalesOrderID) AS NumberOfOrders
FROM 
    Sales.Customer AS c
JOIN 
    Person.Person AS p ON c.PersonID = p.BusinessEntityID
JOIN 
    Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
GROUP BY 
    p.FirstName, p.LastName
HAVING 
    COUNT(soh.SalesOrderID) > 3;
