select SalesOrderID, min(OrderQty) as MinQty, max(OrderQty) as MaxQty from SalesLT.SalesOrderDetail
group by SalesOrderID
