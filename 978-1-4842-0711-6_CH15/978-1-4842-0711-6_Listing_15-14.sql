INSERT INTO dbo.Contacts
VALUES('Peter', 'Carter', 1),
	('Danielle', 'Carter', 1) ;

BACKUP DATABASE Chapter15 FILEGROUP = N'PRIMARY',  FILEGROUP = N'FileGroupA' 
	TO  DISK = N'H:\MSSQL\Backup\Chapter15FileRestore.bak' 
	WITH FORMAT
	, NAME = N'Chapter15-Filegroup Backup'
	, STATS = 10 ;

INSERT INTO dbo.Addresses
VALUES('SQL House', 'Server Buildings', NULL, 'SQ42 4BY'),
	('Carter Mansions', 'Admin Road', 'London', 'E3 3GJ') ;

BACKUP LOG Chapter15 
	TO  DISK = N'H:\MSSQL\Backup\Chapter15FileRestore.bak'
	WITH NOFORMAT
	, NOINIT
	,  NAME = N'Chapter15-Log Backup'
	, NOSKIP
	, STATS = 10 ;
