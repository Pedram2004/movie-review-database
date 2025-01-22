-- DB Logic based Constraints
CREATE TRIGGER prevent_public_access ON Lists
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE access = 'public' AND [type] != 'watch')
    BEGIN
        ROLLBACK TRANSACTION;
        THROW 50100, 'No Public Access for Non WatchList type', 0;
    END
END;