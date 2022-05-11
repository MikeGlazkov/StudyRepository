use Reviews

--Показать все оценки и комментарии пользователя Alex в городе Королев (Korolev):
SELECT	PlaceName, Rate, Comment, StreetName
FROM	Users 
INNER JOIN	Info ON Users.UserID = Info.UserID 
INNER JOIN	Places ON Info.PlaceID = Places.PlaceID 
INNER JOIN	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID
GROUP BY	UserName, PlaceName, Rate, Comment, StreetName, TownName
HAVING	(UserName = 'Alex') AND (TownName = 'Korolev')
