# Oracle Database Backup and Recovery with RMAN

## Project Overview
This project demonstrates how to perform a full backup and recovery of an Oracle database using RMAN. It covers configuring backups, simulating data loss, and restoring the database to its original state.

## Steps

### 1. Configure RMAN Backup
- Set up RMAN with essential configurations like backup destination and retention policy.
- Perform a full database backup along with archive logs.
- Verify that the backup was successful.

### 2. Simulate Data Loss
- Identify specific data files or tablespaces for the simulation.
- Manually delete these files to create a controlled data loss scenario.

### 3. Perform RMAN Recovery
- Use RMAN to restore the missing or damaged data files.
- Apply archive logs and redo logs to recover the database to a consistent state.

### 4. Validate the Recovery
- Query the database to ensure all data is intact.
- Generate an RMAN report to confirm the recovery was successful.


This project provides a complete backup and recovery solution using RMAN for Oracle databases.

