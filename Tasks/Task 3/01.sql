--Показать цену за штуку (UnitPrice) и поля Name, ProductNumber из таблиц Production.Product, Sales.SalesOrderDetail.
SELECT b.UnitPrice, a.Name, a.ProductNumber
FROM Production.Product AS a
JOIN Sales.SalesOrderDetail AS b ON a.ProductID = b.ProductID