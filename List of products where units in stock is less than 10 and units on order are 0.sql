SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock < 10 AND UnitsOnOrder = 0;
