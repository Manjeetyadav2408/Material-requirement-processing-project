# 4. Relational Schema & Normalization

## 4.1 Relational Schema
The design is mapped into three primary tables:
1. **Suppliers**: (SupplierID, SupplierName, Location)
2. **Materials**: (MaterialID, MaterialName, Category, UnitCost, SupplierID)
3. **Processing_Log**: (LogID, MaterialID, StageName, Status)

## 4.2 Normalization Steps
* **1NF**: All fields contain atomic values; no multi-valued attributes exist.
* **2NF**: All non-key attributes are fully dependent on the Primary Key.
* **3NF**: Removed transitive dependencies (e.g., Supplier details are in a separate table from Materials).
