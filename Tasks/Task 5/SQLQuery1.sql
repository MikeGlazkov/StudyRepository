use Reviews

--Показать все имеющиеся объекты в базе в виде:
--Название – Город – Улица - Тип объекта
--Отсортировать по Городу и Улице
SELECT	PlaceName, TownName, StreetName, ObjTypeName
FROM	Places 
INNER JOIN 	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID 
INNER JOIN	ObjTypes ON Places.ObjTypeID = ObjTypes.ObjTypeID
ORDER BY TownName, StreetName