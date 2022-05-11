use Reviews

--�������� ��� ��������� ������� � ���� � ����:
--�������� � ����� � ����� - ��� �������
--������������� �� ������ � �����
SELECT	PlaceName, TownName, StreetName, ObjTypeName
FROM	Places 
INNER JOIN 	Streets ON Places.StreetID = Streets.StreetID 
INNER JOIN	Towns ON Streets.TownID = Towns.TownID 
INNER JOIN	ObjTypes ON Places.ObjTypeID = ObjTypes.ObjTypeID
ORDER BY TownName, StreetName