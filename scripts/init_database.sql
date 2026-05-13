/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' . 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- DROP THE DATABASE IF EXISTS
DROP DATABASE IF EXISTS Datawarehouse ;


-- CREATE DATABSE 

CREATE DATABASE Datawarehouse ;

-- SELECTING DATABASE

USE Datawarehouse ;

-- CREATE SCHEMA FOR THE LAYERS

CREATE SCHEMA bronze ;

CREATE SCHEMA silver ;

CREATE SCHEMA gold ;
