USE Reviews

-- ������� ������� ��������� �������� ������ � ������� ������� (Info)
-- ��������� ��� ������ � ����� �� ID �� �������� ������� (ArchInfo)
GO
CREATE TRIGGER deleteInfo ON Info
FOR DELETE
AS
 DELETE FROM ArchInfo
   WHERE ID = 
   (SELECT del.ID FROM Deleted del)
