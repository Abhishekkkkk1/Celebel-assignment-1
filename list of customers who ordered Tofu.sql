select * from SalesLT.Customer
join SalesLT.CustomerAddress on Customer.CustomerID = CustomerAddress.CustomerID
join SalesLT.Address on CustomerAddress.AddressID = Address.AddressID
join SalesLT.SalesOrderHeader on Customer.CustomerID =  SalesOrderHeader.CustomerID
join SalesLT.SalesOrderDetail on SalesOrderHeader.SalesOrderID = SalesOrderDetail.SalesOrderID
join SalesLT.Product on SalesOrderDetail.ProductID = Product.ProductID
where Product.Name = 'Tofu'
