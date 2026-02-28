# 3. Data Dictionary

This document details the table structures, data types, and constraints used in the database.

### Table: Suppliers
| Field | Data Type | Size | Constraint | Description |
| :--- | :--- | :--- | :--- | :--- |
| SupplierID | INT | - | Primary Key | Unique ID for each supplier |
| SupplierName| VARCHAR | 100 | NOT NULL | Name of the supplier company |

### Table: Materials
| Field | Data Type | Size | Constraint | Description |
| :--- | :--- | :--- | :--- | :--- |
| MaterialID | INT | - | Primary Key | Unique ID for raw material |
| MaterialName| VARCHAR | 100 | NOT NULL | Name of the material |
| SupplierID | INT | - | Foreign Key | Link to Suppliers table |
