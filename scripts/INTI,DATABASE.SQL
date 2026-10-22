
USE master;
GO

-- =============================================
-- Create Data Warehouse Database
-- =============================================

IF DB_ID('data_warehouse_project') IS NOT NULL
BEGIN
    ALTER DATABASE data_warehouse_project
    SET SINGLE_USER
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE data_warehouse_project;
END;
GO

CREATE DATABASE data_warehouse_project;
GO

-- =============================================
-- Switch to Data Warehouse Database
-- =============================================

USE data_warehouse_project;
GO

-- =============================================
-- Create Medallion Architecture Schemas
-- =============================================

-- Bronze Layer: Raw Data
CREATE SCHEMA bronze;
GO

-- Silver Layer: Cleaned and Transformed Data
CREATE SCHEMA silver;
GO

-- Gold Layer: Business-Ready Data
CREATE SCHEMA gold;
GO
