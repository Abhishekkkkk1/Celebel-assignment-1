SELECT OrderDate
FROM Sales.SalesOrderHeader
WHERE TotalDue = (
    SELECT MAX(TotalDue)
    FROM Sales.SalesOrderHeader
);
