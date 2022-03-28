--ѕоказать название (Name) и размер (Size) товара из таблицы Production.Product, если имеютс¤ товары только размера 'M'. «аменить размер товара на NULL, если он имеет значение 'M'. Ќазвани¤ пол¤ Size заменить на Class.
SELECT Name, NULLIF(Size, 'M') AS Class
FROM Production.Product
WHERE Size ='M'