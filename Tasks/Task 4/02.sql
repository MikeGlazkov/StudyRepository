--Показать количество продуктов и подкатегорию продуктов, для которой представлено минимальное (больше нуля) количество продуктов (Таблица Production.Product).
SELECT a.ProductSubcategoryID, Count(*) AS ProductCount 
FROM Production.Product AS a
WHERE a.ProductSubcategoryID IS NOT NULL
GROUP BY a.ProductSubcategoryID
HAVING COUNT(*) = (SELECT MIN(b.ProductCount) 
FROM(
SELECT COUNT(*) AS ProductCount 
FROM Production.Product 
GROUP BY ProductSubcategoryID) AS b)
