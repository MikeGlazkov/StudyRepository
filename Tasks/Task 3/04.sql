--ѕоказать список продуктов (ProductID), которые имеют несколько различных остатков на складах (Quantity), из таблицы Production.ProductInventory, использу¤ SELF JOIN.
SELECT DISTINCT a.ProductID, a.Quantity
FROM Production.ProductInventory AS a
JOIN Production.ProductInventory AS b ON a.ProductID = b.ProductID AND a.Quantity <> b.Quantity