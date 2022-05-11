use Reviews

--Создать представление для всех магазинов (объектов типа Store) города Серпухов (Serpuhov)
GO
CREATE VIEW SerpuhovStores  
AS  
SELECT	PlaceName, StreetName
FROM	Places 
INNER JOIN	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID 
INNER JOIN	ObjTypes ON Places.ObjTypeID = ObjTypes.ObjTypeID
GROUP BY PlaceName, TownName, StreetName, ObjTypeName
HAVING        (TownName = 'Serpuhov') AND (ObjTypeName = 'Store')

GO
SELECT * FROM SerpuhovStores
