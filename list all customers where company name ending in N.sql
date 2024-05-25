SELECT *
FROM Sales.Customer AS c
JOIN Sales.Store AS s ON c.StoreID = s.BusinessEntityID
WHERE s.Name LIKE '%N';
