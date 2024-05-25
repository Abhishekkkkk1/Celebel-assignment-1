SELECT 
    M.BusinessEntityID AS ManagerID, 
    M.FirstName AS ManagerFirstName, 
    M.LastName AS ManagerLastName,
    COUNT(*) AS NumberOfReports
FROM 
    HumanResources.Employee AS M
JOIN 
    HumanResources.Employee AS E ON M.BusinessEntityID = E.ManagerID
GROUP BY 
    M.BusinessEntityID, M.FirstName, M.LastName
HAVING 
    COUNT(*) > 4;
