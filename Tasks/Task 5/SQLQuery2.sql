use Reviews

--�������� ������� � ��������� (������� �������) ����� 2 � ����:
--�������� � ����� � ����� - ��� ������� - �������
--������������� �� ������ � �����
SELECT	PlaceName, TownName, StreetName, ObjTypeName, AVG(Rate) AS AvgRate
FROM	Places 
INNER JOIN	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID 
INNER JOIN	ObjTypes ON Places.ObjTypeID = ObjTypes.ObjTypeID 
INNER JOIN	Info ON Places.PlaceID = Info.PlaceID
GROUP BY PlaceName, TownName, StreetName, ObjTypeName
HAVING        (AVG(Rate) > 2)
ORDER BY TownName, StreetName
