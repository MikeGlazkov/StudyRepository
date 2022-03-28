--ѕоказать пол¤ ProductCategoryID и Name из таблицы Production.ProductCategory. ѕоказать только те товары, название которых начинаетс¤ на букву 'C'.
SELECT ProductCategoryID, Name
FROM Production.ProductCategory
WHERE Name LIKE 'C%'