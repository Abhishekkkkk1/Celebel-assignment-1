SELECT 
    p.Name AS ProductName, 
    pc.Name AS CategoryName
FROM 
    Production.Product AS p
JOIN 
    Purchasing.ProductVendor AS pv ON p.ProductID = pv.ProductID
JOIN 
    Purchasing.Vendor AS v ON pv.BusinessEntityID = v.BusinessEntityID
JOIN 
    Production.ProductSubcategory AS pcs ON p.ProductSubcategoryID = pcs.ProductSubcategoryID
JOIN 
    Production.ProductCategory AS pc ON pcs.ProductCategoryID = pc.ProductCategoryID
WHERE 
    v.Name = 'Specialty Biscuits, Ltd.';
