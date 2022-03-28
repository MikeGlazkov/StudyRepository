--Показать товары, цена которых равна максимальной цене товара того же цвета (цвет определен) (Таблица Production.Product). Показать поля [Name], ListPrice и Color.
SELECT Name, ListPrice, a.Color 
FROM Production.Product AS a
JOIN ( 
SELECT Color, MAX(ListPrice) AS MaxListPrice 
FROM Production.Product
WHERE Size IS NOT NULL
GROUP BY Color ) AS b ON a.Color = b.Color AND a.ListPrice = b.MaxListPrice