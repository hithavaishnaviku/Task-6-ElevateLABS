-- Task 6: Sales Trend Analysis Using Aggregations

-- Monthly revenue and order volume
SELECT
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM sales
GROUP BY year, month
ORDER BY year, month;
