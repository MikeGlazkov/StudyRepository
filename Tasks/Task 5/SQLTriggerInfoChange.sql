USE Reviews

-- ������� ������� ��������� ��������� � ������� ������� (Info)
-- ������������ ������ ����� �� ��������� ������� (TmpInfo)
GO
CREATE TRIGGER updateInfo ON Info
FOR UPDATE
AS
 INSERT INTO TmpInfo
   (ID, Comment, Rate, PlaceID, UserID, DTime)
 SELECT del.* 
 FROM Deleted del


-- ������� �������, ���������� ���� ������ � ������� (Info) ����� ��������� ������
-- � �������������� ������ ����� �� ��������� ������� (TmpInfo)
-- � �������� ������� (ArchInfo)
GO
CREATE TRIGGER setDateTime ON Info
AFTER UPDATE
AS
INSERT INTO ArchInfo
   (ID, Comment, Rate, PlaceID, UserID, DTime)
 SELECT *  FROM TmpInfo
UPDATE Info
   SET DTime = GETDATE()
   WHERE ID = (SELECT ID FROM inserted)
DELETE FROM TmpInfo
