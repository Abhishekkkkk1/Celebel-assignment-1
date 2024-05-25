SELECT
    CountryRegionCode AS Country,
    SUM(TotalDue) AS TotalSales
FROM
    Sales.SalesOrderHeader
    JOIN Sales.SalesOrderAddress ON SalesOrderHeader.SalesOrderID = SalesOrderAddress.SalesOrderID
GROUP BY
    CountryRegionCode
ORDER BY
    TotalSales DESC
LIMIT 10;
