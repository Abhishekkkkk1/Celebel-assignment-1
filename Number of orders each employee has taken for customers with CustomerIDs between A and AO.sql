SELECT 
    e.BusinessEntityID AS EmployeeID,
    e.FirstName,
    e.LastName,
    COUNT(soh.SalesOrderID) AS NumberOfOrders
FROM 
    HumanResources.Employee AS e
JOIN 
    Sales.Customer AS c ON e.BusinessEntityID = c.SalesPersonID
JOIN 
    Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
WHERE 
    c.CustomerID BETWEEN 'A' AND 'AO'
GROUP BY 
    e.BusinessEntityID, e.FirstName, e.LastName;
