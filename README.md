# RetailAnalytics-DWBI
This project is a complete Data Warehouse and Business Intelligence solution. Done as  year 3 Sem 1 Project for DWBI Module

# 🧠 Data Warehouse & Business Intelligence Project

This project demonstrates a complete end-to-end Business Intelligence (BI) workflow using a **Snowflake Schema** for a retail sales scenario. It includes:

- ⚙️ Data Warehouse design and implementation (via SSMS)
- 📊 OLAP Cube creation (via Visual Studio/SSAS)
- 📝 SSRS Reports
- 📈 Power BI dashboards
- 📁 Excel-based OLAP operations

---

## 🗂️ Folder Structure

| Folder | Description |
|--------|-------------|
| `Assig1_DWBI_CUBE/` | Contains SSAS cube files including dimensions, measures, and deployment scripts. |
| `DW_BusinessIntelligenceAssignment/` | SQL files and SSMS scripts used for data warehouse schema creation and population. |
| `Reports/` | Reports including basic idea on the project. |
| `powerBI/` | Power BI dashboards used for visual analytics and insights. |
| `ExcelDemo/` | Excel-based pivot tables and OLAP operations on cube data. |

---

## 🧱 Data Warehouse Schema

This project follows a **Snowflake Schema** with:

- **Fact Table**: `Factcustomer_orders`  
- **Dimension Tables**:
  - `Dimbrands`
  - `Dimproduct_inventory`
  - `Dimlocations`
  - `Dimcustomers` (with SCD implementation)

### ➕ Slowly Changing Dimension (SCD)

The `Dimcustomers` table uses **Type 2 Slowly Changing Dimensions** to maintain historical changes in:
- `address`
- `city`
- `state`
- `zipcode`
- `country`

With additional fields for:
- `StartDate`
- `EndDate`
- `IsCurrent`

This ensures accurate historical analysis of customer location-related trends.

---

## 🔍 Key Features

- 💽 ETL process implemented via T-SQL and SSMS
- 📦 OLAP cube with measures like `order_qty`, `order_total`, `processing_time`
- 🧪 OLAP operations demonstrated using Excel PivotTables (slice, dice, drill-down, roll-up)
- 📈 Power BI dashboards with:
  - Matrix visualizations
  - Slicers
  - Drill-through capability
  - Drill-down hierarchies
- 📝 SSRS reports for detailed business analytics

---

## 🚀 Tools & Technologies

- Microsoft SQL Server (SSMS)
- SQL Server Analysis Services (SSAS)
- SQL Server Reporting Services (SSRS)
- Power BI
- Microsoft Excel

---

## 📌 Author Notes

This project was completed as part of my academic coursework on **Data Warehousing & Business Intelligence**. It demonstrates dimensional modeling, ETL, SCD implementation, OLAP operations, and report/dashboard development.

---


