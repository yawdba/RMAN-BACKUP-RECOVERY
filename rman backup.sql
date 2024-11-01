--Configure RMAN Backup

PS C:\Users\JAY> cd C:\app\JAY\product\21c\backup
PS C:\app\JAY\product\21c\backup> rman target /

RMAN> CONFIGURE CHANNEL DEVICE TYPE DISK FORMAT 'C:\app\JAY\product\21c\backup\%u';

RMAN> CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 7 DAYS;

RMAN> BACKUP DATABASE PLUS ARCHIVELOG;

RMAN> LIST BACKUP SUMMARY;

RMAN> LIST BACKUP BY FILE;


--Simulate a Failure

PS C:\Users\JAY> rm C:\APP\JAY\PRODUCT\21C\ORADATA\XE\USERS01.DBF;


--Recover and Restore the Database

PS C:\Users\JAY> rman target /

RMAN> STARTUP MOUNT;

RMAN> RESTORE DATABASE;

RMAN> RECOVER DATABASE;
