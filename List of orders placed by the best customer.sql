-- First, find the best customer
SELECT TOP 1 CustomerID
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY SUM(TotalDue) DESC;


-- Then, retrieve the list of orders placed by the best customer
SELECT SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
WHERE CustomerID = (SELECT TOP 1 CustomerID
                    FROM Sales.SalesOrderHeader
                    GROUP BY CustomerID
                    ORDER BY SUM(TotalDue) DESC);
