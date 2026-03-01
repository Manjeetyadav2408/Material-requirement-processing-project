USE MaterialProcessingDB;

-- View all suppliers
SELECT * FROM Suppliers;

-- View material names and costs
SELECT MaterialName, UnitCost FROM Materials;

-- WHERE condition
SELECT * FROM Materials WHERE UnitCost > 500;

-- ORDER BY
SELECT * FROM Materials ORDER BY UnitCost DESC;

-- GROUP BY
SELECT Category, COUNT(*) AS TotalMaterials
FROM Materials
GROUP BY Category;

-- INNER JOIN
SELECT m.MaterialName, s.SupplierName
FROM Materials m
INNER JOIN Suppliers s 
ON m.SupplierID = s.SupplierID;

-- LEFT JOIN
SELECT s.SupplierName, m.MaterialName
FROM Suppliers s
LEFT JOIN Materials m 
ON s.SupplierID = m.SupplierID;

-- UPDATE example
UPDATE Materials
SET UnitCost = 550
WHERE MaterialID = 1;

-- DELETE example
DELETE FROM Processing_Log
WHERE Status = 'Pending';
