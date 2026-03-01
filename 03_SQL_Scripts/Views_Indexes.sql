USE MaterialProcessingDB;

-- Create a View to show material with supplier details
CREATE VIEW Material_Supplier_View AS
SELECT m.MaterialName, 
       m.UnitCost, 
       s.SupplierName, 
       s.Location
FROM Materials m
JOIN Suppliers s 
ON m.SupplierID = s.SupplierID;

-- Create Index to improve search performance
CREATE INDEX idx_material_name
ON Materials(MaterialName);
