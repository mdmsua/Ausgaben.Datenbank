﻿CREATE PROCEDURE [deploy].[DisableTriggers]
AS
BEGIN
	DECLARE	@cmd VARCHAR(MAX)
	SELECT	@cmd = COALESCE(@cmd + CHAR(13), '') +
		'ALTER TABLE [' + s.name + '].[' + t.name + '] DISABLE TRIGGER ALL'
		from sys.tables t inner join sys.schemas s on s.schema_id = t.schema_id
	EXECUTE (@cmd)
END