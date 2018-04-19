DECLARE @dbName SYSNAME 
DECLARE @spid INT, @cnt INT, @sql VARCHAR(255) 

SET @dbName='@DatabaseName@' 

SELECT @cnt = COUNT(*) 
FROM master..sysprocesses 
WHERE dbid = DB_ID(@dbname) 
AND spid != @@SPID 
AND spid>50
 
PRINT 'Starting to KILL '+RTRIM(@cnt)+' processes.' 

declare syscur cursor for
SELECT spid
FROM master..sysprocesses 
WHERE dbid = DB_ID(@dbname) 
AND spid != @@SPID 
AND spid>50

open syscur 
fetch next from syscur into @spid
WHILE @@FETCH_STATUS=0 
BEGIN 
    PRINT 'About to KILL '+RTRIM(@spid)  
  
    SET @sql = 'KILL '+RTRIM(@spid) 
    EXEC(@sql)  
    Fetch next from syscur into @spid
END 
close syscur
deallocate syscur

GO
