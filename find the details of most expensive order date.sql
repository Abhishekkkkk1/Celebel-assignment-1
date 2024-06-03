select top 1 * from SalesLT.SalesOrderHeader
join SalesLT.SalesOrderDetail on SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
order by SalesOrderDetail.UnitPrice DESC
