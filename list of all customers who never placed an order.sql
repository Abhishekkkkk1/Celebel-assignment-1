select * from SalesLT.Customer
left join SalesLT.SalesOrderHeader on Customer.CustomerID = SalesOrderHeader.CustomerID
where SalesOrderHeader.CustomerID IS NULL
