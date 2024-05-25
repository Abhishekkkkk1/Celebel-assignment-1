SELECT e.BusinessEntityID AS EmployeeID, 
       SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
JOIN HumanResources.Employee AS e ON c.SalesPersonID = e.BusinessEntityID
GROUP BY e.BusinessEntityID;
