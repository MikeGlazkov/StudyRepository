USE Reviews

-- создать триггер обработки удалени€ записи в таблице отзывов (Info)
-- удал€ющий все строки с таким же ID из архивной таблицы (ArchInfo)
GO
CREATE TRIGGER deleteInfo ON Info
FOR DELETE
AS
 DELETE FROM ArchInfo
   WHERE ID = 
   (SELECT del.ID FROM Deleted del)
