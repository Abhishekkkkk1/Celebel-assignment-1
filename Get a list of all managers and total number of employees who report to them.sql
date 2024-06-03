
SELECT m.BusinessEntityID AS ManagerID, p.FirstName, p.LastName, COUNT(e.BusinessEntityID) AS NumberOfReports
FROM HumanResources.Employee e
JOIN HumanResources.Employee m ON e.OrganizationNode = m.OrganizationNode.GetAncestor(1)
JOIN Person.Person p ON m.BusinessEntityID = p.BusinessEntityID
GROUP BY m.BusinessEntityID, p.FirstName, p.LastName;
