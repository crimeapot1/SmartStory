USE SmartStory
GO

-- Создаем таблицу контроля версий
BEGIN TRANSACTION
    IF( OBJECT_ID(N'UpdateDatabaseVersions') IS NULL)
        BEGIN
           CREATE TABLE UpdateDatabaseVersions (VersionNumber INT NOT NULL);
           INSERT INTO UpdateDatabaseVersions (VersionNumber) VALUES(1);
        END
COMMIT
GO