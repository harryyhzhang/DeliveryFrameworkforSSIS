
declare @dbname Nvarchar(50)='EDWStaging' 
declare @version int
declare @sql Nvarchar(max)='select @cnt=max(change_number)  from ' + @dbname + '.dbo.changelog' 

execute sp_executesql @sql, N'@cnt int OUTPUT', @cnt=@version OUTPUT
 
   
declare @dbSnapshotName Nvarchar(100)= @dbname +'_Snapshot_V'+convert(Nvarchar,isnull(@version,0))
declare @cmd varchar(max)

set @cmd = 'CREATE DATABASE [' + @dbSnapshotName + '] ON ' 
select @cmd = @cmd +CHAR(10)+'(NAME = ''' + RTRIM(name)
	+ ''', FILENAME = ''' + RTRIM(physical_name)
	+ @dbSnapshotName + '_sx''),'
	FROM sys.master_files
	WHERE type <> 1 -- ignore logfile since snapshots do not create one
	AND database_id = db_id(@dbname)

SET @cmd =  LEFT(@cmd,LEN(@cmd)-1) --take away extra trailing comma left from SELECT file assignment
SET @cmd = @cmd + CHAR(10) + ' AS SNAPSHOT OF [' + @dbname +']' --complete statement
exec(@cmd)
go

