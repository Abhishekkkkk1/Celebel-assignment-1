select * from SalesLT.Customer
join SalesLT.CustomerAddress on Customer.CustomerID = CustomerAddress.CustomerID
join SalesLT.Address on Address.AddressID = CustomerAddress.AddressID
where CountryRegion = 'United Kingdom' or CountryRegion = 'United States'
