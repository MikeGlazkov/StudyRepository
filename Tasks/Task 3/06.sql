--ѕоказать список покупателей (CustomerID), которые имеют несколько сумм налога (TaxAmt), из таблицы Sales.SalesOrderHeader, использу¤ SELF JOIN. —умма налога меньше 100.
SELECT DISTINCT a.CustomerID, a.TaxAmt 
FROM Sales.SalesOrderHeader AS a
JOIN Sales.SalesOrderHeader AS b ON a.CustomerID = b.CustomerID AND a.TaxAmt <> b.TaxAmt 
WHERE a.TaxAmt < 100