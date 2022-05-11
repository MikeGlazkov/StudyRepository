USE Reviews

-- ������� �������, ������������ ������� ������ � ������������ 
-- ������������, ����������� ��� ������ ���������� @userName,
-- ��� ������, ����������� ��� ������ ���������� @townName

GO
CREATE FUNCTION getInfo (@userName varchar(255), @townName varchar(255))
RETURNS  @result TABLE 
  (PlaceName varchar(255), Rate Int, Comment varchar(255), StreetName varchar(255))
AS
 BEGIN
  INSERT @result
	SELECT	PlaceName, Rate, Comment, StreetName
	FROM	Users 
	INNER JOIN	Info ON Users.UserID = Info.UserID 
	INNER JOIN	Places ON Info.PlaceID = Places.PlaceID 
	INNER JOIN	Streets ON Places.StreetID = Streets.StreetID 
	INNER JOIN	Towns ON Streets.TownID = Towns.TownID
	GROUP BY	UserName, PlaceName, Rate, Comment, StreetName, TownName
	HAVING	(UserName = @userName) AND (TownName = @townName)

  RETURN
 END

-- ������� ������� getInfo 
-- �� ��������� ��������� @userName, ������ 'Alex',
-- � ��������� ��������� @townName, ������ 'Serpuhov'
GO
SELECT * FROM getInfo('Alex', 'Serpuhov')
