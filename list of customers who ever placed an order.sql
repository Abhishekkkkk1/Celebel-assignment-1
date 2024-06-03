select * from SalesLT.Customer
right join SalesLT.SalesOrderHeader on Customer.CustomerID = SalesOrderHeader.CustomerID
