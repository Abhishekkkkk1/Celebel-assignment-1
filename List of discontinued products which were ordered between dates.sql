SELECT 
    p.ProductID,
    p.Name AS ProductName,
    sod.OrderDate
FROM 
    Sales.SalesOrderDetail AS sod
JOIN 
    Production.Product AS p ON sod.ProductID = p.ProductID
WHERE 
    p.DiscontinuedDate IS NOT NULL
    AND sod.OrderDate BETWEEN '1997-01-01' AND '1998-01-01';
