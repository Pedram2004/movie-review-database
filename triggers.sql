-- DB Logic based Constraints
CREATE TRIGGER prevent_public_access ON List
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE access = 'public' AND [type] != 'watch')
    BEGIN
        ROLLBACK TRANSACTION;
        THROW 50100, 'No Public Access for Non WatchList type', 0;
    END
END;


CREATE TRIGGER unique_download_viewed ON List
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT UCL.[user_id], inserted.[type] FROM User_Created_List AS UCL INNER JOIN inserted ON (UCL.list_id = inserted.list_id)
    WHERE inserted.[type] != 'watch' GROUP BY UCL.[user_id], inserted.[type] HAVING COUNT(*) > 1)
    BEGIN	    
	ROLLBACK TRANSACTION;
	THROW 50110, 'Only One Download or Viewed List Allowed per User', 0;
    END
END;

-- Automatic Adjustments

CREATE TRIGGER auto_insert_part ON Production 
AFTER INSERT
AS
BEGIN
    INSERT INTO Part 
    SELECT production_id, 0 FROM inserted;
END;
