USE MaterialProcessingDB;

-- Insert Suppliers
INSERT INTO Suppliers (SupplierName, Location) VALUES
('SteelCorp', 'Mumbai'),
('MetalWorks', 'Pune'),
('Alloy Ltd', 'Delhi');

-- Insert Materials
INSERT INTO Materials (MaterialName, Category, UnitCost, SupplierID) VALUES
('Iron Sheet', 'Metal', 500.00, 1),
('Copper Rod', 'Metal', 700.00, 2),
('Aluminum Plate', 'Metal', 450.00, 3);

-- Insert Processing Logs
INSERT INTO Processing_Log (MaterialID, StageName, Status, ProcessDate) VALUES
(1, 'Cutting', 'Completed', '2025-03-01'),
(1, 'Polishing', 'In Progress', '2025-03-02'),
(2, 'Molding', 'Pending', '2025-03-03');
