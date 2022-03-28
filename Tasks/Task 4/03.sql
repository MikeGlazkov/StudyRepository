--Показать товары, для которых существует более 3 Линии продуктов, в одном стиле (стиль определен) (Таблица Production.Product). Показать поля [Name], Style и ProductLine.
SELECT p1.Name, p1.Style, p1.ProductLine
FROM Production.Product AS p1
WHERE p1.Style IS NOT NULL
AND p1.ProductLine IS NOT NULL
AND (
SELECT COUNT(DISTINCT p2.ProductLine) AS ProductLineCount
FROM Production.Product AS p2
WHERE p2.Style IS NOT NULL
AND p1.Style = p2.Style
) > 3
ORDER BY p1.Name, p1.ProductLine