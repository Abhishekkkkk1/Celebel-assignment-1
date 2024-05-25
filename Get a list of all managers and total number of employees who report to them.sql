SELECT m.BusinessEntityID AS ManagerID, 
       m.FirstName AS ManagerFirstName, 
       m.LastName AS ManagerLastName,
       COUNT(e.BusinessEntityID) AS TotalEmployees
FROM HumanResources.Employee AS m
LEFT JOIN HumanResources.Employee AS e ON m.BusinessEntityID = e.ManagerID
GROUP BY m.BusinessEntityID, m.FirstName, m.LastName;
