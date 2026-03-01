USE MaterialProcessingDB;

-- Start Transaction
START TRANSACTION;

-- Insert a new material
INSERT INTO Materials (MaterialName, Category, UnitCost, SupplierID)
VALUES ('Zinc Sheet', 'Metal', 600.00, 1);

-- Create Savepoint
SAVEPOINT before_update;

-- Update the inserted material
UPDATE Materials
SET UnitCost = 650.00
WHERE MaterialName = 'Zinc Sheet';

-- Rollback to savepoint (undo update)
ROLLBACK TO before_update;

-- Commit final changes
COMMIT;
