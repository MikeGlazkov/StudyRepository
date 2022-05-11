use Reviews

--Создать хранимую процедуру, отбирающую объекты с рейтингом (средней оценкой) 
--более или равным задаваемому значению (передаваемому параметру) @minRate
--в виде:
--Название – Город – Улица - Тип объекта - Рейтинг
--Отсортировать по Городу и Улице
GO
CREATE PROCEDURE WellPlaces 
 @minRate int
AS
BEGIN
SELECT	PlaceName, TownName, StreetName, ObjTypeName, AVG(Rate) AS AvgRate
FROM	Places 
INNER JOIN	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID 
INNER JOIN	ObjTypes ON Places.ObjTypeID = ObjTypes.ObjTypeID 
INNER JOIN	Info ON Places.PlaceID = Info.PlaceID
GROUP BY PlaceName, TownName, StreetName, ObjTypeName
HAVING        (AVG(Rate) >=  @minRate)
ORDER BY TownName, StreetName
END;

-- вызвать хранимую процедуру WellPlaces со значением параметра @minRate, равным 2
GO
EXEC WellPlaces 2
