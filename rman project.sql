PS C:\Users\JAY> cd C:\app\JAY\product\21c\backup
PS C:\app\JAY\product\21c\backup> rman target /

Recovery Manager: Release 21.0.0.0.0 - Production on Fri Nov 1 16:58:36 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle and/or its affiliates.  All rights reserved.

connected to target database: XE (DBID=3064160662, not open)

RMAN> CONFIGURE CHANNEL DEVICE TYPE DISK FORMAT 'C:\app\JAY\product\21c\backup\%u';

using target database control file instead of recovery catalog
old RMAN configuration parameters:
CONFIGURE CHANNEL DEVICE TYPE DISK FORMAT   'C:\app\JAY\product\21c\backup';
new RMAN configuration parameters:
CONFIGURE CHANNEL DEVICE TYPE DISK FORMAT   'C:\app\JAY\product\21c\backup\%u';
new RMAN configuration parameters are successfully stored

RMAN> CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 7 DAYS;

old RMAN configuration parameters:
CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 7 DAYS;
new RMAN configuration parameters:
CONFIGURE RETENTION POLICY TO RECOVERY WINDOW OF 7 DAYS;
new RMAN configuration parameters are successfully stored

RMAN> BACKUP DATABASE PLUS ARCHIVELOG;


Starting backup at 01-NOV-24
allocated channel: ORA_DISK_1
channel ORA_DISK_1: SID=615 device type=DISK
channel ORA_DISK_1: starting archived log backup set
channel ORA_DISK_1: specifying archived log(s) in backup set
input archived log thread=1 sequence=7 RECID=1 STAMP=1183889403
input archived log thread=1 sequence=8 RECID=2 STAMP=1183889618
input archived log thread=1 sequence=9 RECID=3 STAMP=1183889965
input archived log thread=1 sequence=10 RECID=4 STAMP=1183890117
input archived log thread=1 sequence=11 RECID=5 STAMP=1183890475
input archived log thread=1 sequence=12 RECID=6 STAMP=1183890491
input archived log thread=1 sequence=13 RECID=7 STAMP=1183890513
input archived log thread=1 sequence=14 RECID=8 STAMP=1183890854
input archived log thread=1 sequence=15 RECID=9 STAMP=1183890890
input archived log thread=1 sequence=16 RECID=10 STAMP=1183890897
input archived log thread=1 sequence=17 RECID=11 STAMP=1183910958
input archived log thread=1 sequence=18 RECID=12 STAMP=1183911149
input archived log thread=1 sequence=19 RECID=13 STAMP=1183911157
input archived log thread=1 sequence=20 RECID=14 STAMP=1183912007
input archived log thread=1 sequence=21 RECID=15 STAMP=1183912413
input archived log thread=1 sequence=22 RECID=16 STAMP=1183912420
channel ORA_DISK_1: starting piece 1 at 01-NOV-24
channel ORA_DISK_1: finished piece 1 at 01-NOV-24
piece handle=C:\APP\JAY\PRODUCT\21C\BACKUP\113925VH tag=TAG20241101T165929 comment=NONE
channel ORA_DISK_1: backup set complete, elapsed time: 00:00:01
Finished backup at 01-NOV-24

Starting backup at 01-NOV-24
using channel ORA_DISK_1
channel ORA_DISK_1: starting full datafile backup set
channel ORA_DISK_1: specifying datafile(s) in backup set
input datafile file number=00001 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\SYSTEM01.DBF
input datafile file number=00003 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\SYSAUX01.DBF
input datafile file number=00004 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\UNDOTBS01.DBF
input datafile file number=00007 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\USERS01.DBF
channel ORA_DISK_1: starting piece 1 at 01-NOV-24
channel ORA_DISK_1: finished piece 1 at 01-NOV-24
piece handle=C:\APP\JAY\PRODUCT\21C\BACKUP\123925VJ tag=TAG20241101T165931 comment=NONE
channel ORA_DISK_1: backup set complete, elapsed time: 00:00:03
channel ORA_DISK_1: starting full datafile backup set
channel ORA_DISK_1: specifying datafile(s) in backup set
input datafile file number=00010 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSAUX01.DBF
input datafile file number=00009 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSTEM01.DBF
input datafile file number=00011 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\UNDOTBS01.DBF
input datafile file number=00012 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\USERS01.DBF
channel ORA_DISK_1: starting piece 1 at 01-NOV-24
channel ORA_DISK_1: finished piece 1 at 01-NOV-24
piece handle=C:\APP\JAY\PRODUCT\21C\BACKUP\133925VM tag=TAG20241101T165931 comment=NONE
channel ORA_DISK_1: backup set complete, elapsed time: 00:00:01
channel ORA_DISK_1: starting full datafile backup set
channel ORA_DISK_1: specifying datafile(s) in backup set
input datafile file number=00006 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\PDBSEED\SYSAUX01.DBF
input datafile file number=00005 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\PDBSEED\SYSTEM01.DBF
input datafile file number=00008 name=C:\APP\JAY\PRODUCT\21C\ORADATA\XE\PDBSEED\UNDOTBS01.DBF
channel ORA_DISK_1: starting piece 1 at 01-NOV-24
channel ORA_DISK_1: finished piece 1 at 01-NOV-24
piece handle=C:\APP\JAY\PRODUCT\21C\BACKUP\143925VN tag=TAG20241101T165931 comment=NONE
channel ORA_DISK_1: backup set complete, elapsed time: 00:00:01
Finished backup at 01-NOV-24

Starting backup at 01-NOV-24
using channel ORA_DISK_1
specification does not match any archived log in the repository
backup cancelled because there are no files to backup
Finished backup at 01-NOV-24

Starting Control File and SPFILE Autobackup at 01-NOV-24
piece handle=C:\APP\JAY\PRODUCT\21C\DBHOMEXE\DATABASE\C-3064160662-20241101-03 comment=NONE
Finished Control File and SPFILE Autobackup at 01-NOV-24

RMAN> LIST BACKUP SUMMARY;


List of Backups
===============
Key     TY LV S Device Type Completion Time #Pieces #Copies Compressed Tag
------- -- -- - ----------- --------------- ------- ------- ---------- ---
23      B  A  A DISK        01-NOV-24       1       1       NO         TAG20241101T165929
24      B  F  A DISK        01-NOV-24       1       1       NO         TAG20241101T165931
25      B  F  A DISK        01-NOV-24       1       1       NO         TAG20241101T165931
26      B  F  A DISK        01-NOV-24       1       1       NO         TAG20241101T165931
27      B  F  A DISK        01-NOV-24       1       1       NO         TAG20241101T165936

RMAN> LIST BACKUP BY FILE;


List of Datafile Backups
========================

File Key     TY LV S Ckp SCN    Ckp Time  #Pieces #Copies Compressed Tag
---- ------- -  -- - ---------- --------- ------- ------- ---------- ---
1    24      B  F  A 7275020    01-NOV-24 1       1       NO         TAG20241101T165931
3    24      B  F  A 7275020    01-NOV-24 1       1       NO         TAG20241101T165931
4    24      B  F  A 7275020    01-NOV-24 1       1       NO         TAG20241101T165931
5    26      B  F  A 2803756    22-OCT-24 1       1       NO         TAG20241101T165931
6    26      B  F  A 2803756    22-OCT-24 1       1       NO         TAG20241101T165931
7    24      B  F  A 7275020    01-NOV-24 1       1       NO         TAG20241101T165931
8    26      B  F  A 2803756    22-OCT-24 1       1       NO         TAG20241101T165931
9    25      B  F  A 7275023    01-NOV-24 1       1       NO         TAG20241101T165931
10   25      B  F  A 7275023    01-NOV-24 1       1       NO         TAG20241101T165931
11   25      B  F  A 7275023    01-NOV-24 1       1       NO         TAG20241101T165931
12   25      B  F  A 7275023    01-NOV-24 1       1       NO         TAG20241101T165931

List of Archived Log Backups
============================

Thrd Seq     Low SCN    Low Time  BS Key  S #Pieces #Copies Compressed Tag
---- ------- ---------- --------- ------- - ------- ------- ---------- ---
1    7       5213969    31-OCT-24 23      A 1       1       NO         TAG20241101T165929
1    8       5259041    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    9       5259256    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    10      5259466    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    11      5260249    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    12      5260501    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    13      5260530    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    14      5260564    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    15      5260759    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    16      5260804    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    17      5260833    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    18      5272261    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    19      5272434    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    20      5272474    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    21      7273160    01-NOV-24 23      A 1       1       NO         TAG20241101T165929
1    22      7274993    01-NOV-24 23      A 1       1       NO         TAG20241101T165929

List of Control File Backups
============================

CF Ckp SCN Ckp Time  BS Key  S #Pieces #Copies Compressed Tag
---------- --------- ------- - ------- ------- ---------- ---
7276091    01-NOV-24 27      A 1       1       NO         TAG20241101T165936
List of SPFILE Backups
======================

Modification Time BS Key  S #Pieces #Copies Compressed Tag
----------------- ------- - ------- ------- ---------- ---
01-NOV-24         27      A 1       1       NO         TAG20241101T165936



Simulate a failure
=================
PS C:\Users\JAY> rm C:\APP\JAY\PRODUCT\21C\ORADATA\XE\USERS01.DBF;



Recover and Restore the database
====================
PS C:\Users\JAY> rman target /

Recovery Manager: Release 21.0.0.0.0 - Production on Fri Nov 1 17:01:07 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle and/or its affiliates.  All rights reserved.

connected to target database: XE (DBID=3064160662, not open)

RMAN> STARTUP MOUNT;

database is already started

RMAN> RESTORE DATABASE;

Starting restore at 01-NOV-24
using target database control file instead of recovery catalog
allocated channel: ORA_DISK_1
channel ORA_DISK_1: SID=1103 device type=DISK

skipping datafile 1; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\SYSTEM01.DBF
skipping datafile 3; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\SYSAUX01.DBF
skipping datafile 4; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\UNDOTBS01.DBF
skipping datafile 5; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\PDBSEED\SYSTEM01.DBF
skipping datafile 6; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\PDBSEED\SYSAUX01.DBF
skipping datafile 8; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\PDBSEED\UNDOTBS01.DBF
skipping datafile 9; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSTEM01.DBF
skipping datafile 10; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\SYSAUX01.DBF
skipping datafile 11; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\UNDOTBS01.DBF
skipping datafile 12; already restored to file C:\APP\JAY\PRODUCT\21C\ORADATA\XE\XEPDB1\USERS01.DBF
channel ORA_DISK_1: starting datafile backup set restore
channel ORA_DISK_1: specifying datafile(s) to restore from backup set
channel ORA_DISK_1: restoring datafile 00007 to C:\APP\JAY\PRODUCT\21C\ORADATA\XE\USERS01.DBF
channel ORA_DISK_1: reading from backup piece C:\APP\JAY\PRODUCT\21C\BACKUP\123925VJ
channel ORA_DISK_1: piece handle=C:\APP\JAY\PRODUCT\21C\BACKUP\123925VJ tag=TAG20241101T165931
channel ORA_DISK_1: restored backup piece 1
channel ORA_DISK_1: restore complete, elapsed time: 00:00:01
Finished restore at 01-NOV-24

RMAN> RECOVER DATABASE;

Starting recover at 01-NOV-24
using channel ORA_DISK_1

starting media recovery
media recovery complete, elapsed time: 00:00:01

Finished recover at 01-NOV-24