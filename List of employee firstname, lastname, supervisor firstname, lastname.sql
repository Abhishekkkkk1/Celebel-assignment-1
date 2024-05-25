SELECT e.FirstName AS EmployeeFirstName, 
       e.LastName AS EmployeeLastName, 
       s.FirstName AS SupervisorFirstName, 
       s.LastName AS SupervisorLastName
FROM HumanResources.Employee AS e
LEFT JOIN HumanResources.Employee AS s ON e.ManagerID = s.BusinessEntityID;
