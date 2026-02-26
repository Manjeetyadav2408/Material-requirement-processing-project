 This dataset includes:

* **Production.Product:** The master list of what you make (Bicycles) and what you buy (Wheels, Bolts, Frames).
* **Production.BillOfMaterials:** The "recipe." It tells the database that to make 1 Bicycle, you need 1 Frame, 2 Wheels, and 1 Handlebar.
* **Production.WorkOrder:** The "to-do list." It tracks the progress of building those items.
* **Production.Location & ProductInventory:** Tells you exactly how many items are in the warehouse right now.

---

### Group Project Idea: The "BOM Explosion"

Since you have a large team, you can build a system that performs a **"BOM Explosion."** This is the heart of MRP.

1. **Input:** A user enters "We need to build 50 Mountain Bikes by Friday."
2. **The Logic (SQL):** Your backend runs a query joining `Product` and `BillOfMaterials` to calculate the total list of parts needed (e.g., 100 wheels, 50 frames).
3. **The Check:** The system compares that list against the `ProductInventory` table.
4. **The Result:** It outputs a "Shortage Report"—showing exactly which parts you are missing and need to order from suppliers.

### Team Division for 5–7 People

With a dataset this rich, you can easily justify a large team by splitting the work into modules:

* **Inventory Module (1-2 people):** Manage stock levels, safety stock, and reorder points.
* **Production Module (2 people):** Handle the "Work Orders" and the logic for the Bill of Materials.
* **Purchasing Module (1-2 people):** Manage "Vendor" data and create Purchase Orders for missing parts.
* **Full-Stack/UI (1-2 people):** Build a dashboard (using Python/Streamlit or a Web App) so the user doesn't have to look at raw SQL tables.
