# Task-6-ElevateLABS
Sales Trend Analysis Using Aggregations

📌 Objective

The goal of this task is to analyze monthly sales trends by calculating revenue and order volume from the sales dataset. This helps in understanding business performance over time.

🛠 Tools Used

SQL (PostgreSQL / MySQL / SQLite)

Python (Pandas) for validation and generating results

📂 Deliverables

SQL Script → task6_sales_trend_analysis.sql

Contains SQL queries for monthly revenue and order volume analysis.

Results Table → task6_results_table.csv

Summarized table with year, month, total revenue, and order volume.

📊 Approach

Extracted year and month from the InvoiceDate column.

Calculated total revenue using SUM(Quantity * UnitPrice).

Calculated order volume using COUNT(DISTINCT InvoiceNo).

Grouped results by year and month.

Ordered the results chronologically for trend analysis.

📝 SQL Query
SELECT
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM sales
GROUP BY year, month
ORDER BY year, month;

✅ Insights

Provides a month-over-month trend of revenue and orders.

Useful for identifying peak months and seasonal trends.

Can be extended to filter for specific years or product categories.
