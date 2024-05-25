SELECT c.CustomerID, p.FirstName, p.LastName
FROM Sales.Customer AS c
JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
JOIN Person.Address AS a ON p.BusinessEntityID = a.BusinessEntityID
WHERE a.CountryRegionCode IN ('UK', 'USA');
