USE Reviews

-- создать триггер обработки изменений в таблице отзывов (Info)
-- записывающий старый отзыв во временную таблицу (TmpInfo)
GO
CREATE TRIGGER updateInfo ON Info
FOR UPDATE
AS
 INSERT INTO TmpInfo
   (ID, Comment, Rate, PlaceID, UserID, DTime)
 SELECT del.* 
 FROM Deleted del


-- создать триггер, измен€ющий дату отзыва в таблице (Info) после изменени€ записи
-- и переписывающий старый отзыв из временной таблицы (TmpInfo)
-- в архивную таблицу (ArchInfo)
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
