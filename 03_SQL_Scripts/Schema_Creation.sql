-- PHASE 3: SQL Implementation
-- Student 9: Database & Table Creation

-- Create the Database
CREATE DATABASE MaterialProcessingDB;
USE MaterialProcessingDB;

-- Create Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100) NOT NULL,
    Location VARCHAR(150)
);

-- Create Materials Table with Constraints
CREATE TABLE Materials (
    MaterialID INT PRIMARY KEY AUTO_INCREMENT,
    MaterialName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    UnitCost DECIMAL(10, 2) CHECK (UnitCost > 0),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create Processing Log Table
CREATE TABLE Processing_Log (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    MaterialID INT,
    StageName VARCHAR(50) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID) ON DELETE CASCADE
);
