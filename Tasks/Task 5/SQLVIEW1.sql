use Reviews

--Создать представление для всех имеющихся объектров в базе в виде:
--Название – Город – Улица - Тип объекта
GO
CREATE VIEW AllPlaces  
AS  
SELECT	PlaceName, TownName, StreetName, ObjTypeName
FROM	Places 
INNER JOIN 	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID 
INNER JOIN	ObjTypes ON Places.ObjTypeID = ObjTypes.ObjTypeID

GO
SELECT * FROM AllPlaces