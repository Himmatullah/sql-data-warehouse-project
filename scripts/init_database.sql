
/*
====================================
CREATE DATABASE AND SCHEMA
================================================================================
Script Purpose:
--------------------------------------------------------------------------------
This script creates a fresh SQL Server database named 'DataWarehouse' along 
with three schemas: bronze, silver, and gold. It first checks if the database 
already exists and drops it to ensure a clean setup.

WARNING:
--------------------------------------------------------------------------------
- Running this script will DROP the existing 'DataWarehouse' database, 
  resulting in permanent loss of all data in it.
- Make sure to backup any important data before executing this script.
================================================================================
*/

-- Check if the database exists and drop it
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;  -- Disconnect users
    DROP DATABASE DataWarehouse;
END
GO

-- Create the database
CREATE DATABASE DataWarehouse;
GO

-- Use the newly created database
USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
