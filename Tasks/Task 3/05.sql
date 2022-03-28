--Показать список остатков на складах (Quantity), которые соответствуют нескольким продуктам (ProductID), из таблицы Production.ProductInventory, используя SELF JOIN.
SELECT DISTINCT a.Quantity, a.ProductID 
FROM Production.ProductInventory AS a
JOIN Production.ProductInventory AS b ON a.Quantity = b.Quantity AND a.ProductID <> b.ProductID