select SalesOrderID, avg(OrderQty) as AverageQty from SalesLT.SalesOrderDetail
group by SalesOrderID
