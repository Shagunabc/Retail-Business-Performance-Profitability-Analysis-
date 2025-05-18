-- Create table
CREATE TABLE retail_sales (
    order_id INT,
    order_date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT,
    inventory_days INT
);

-- Insert sample data
INSERT INTO retail_sales VALUES
(1001, '2024-01-10', 'East', 'Furniture', 'Chairs', 250.00, 2, 0.1, 20.00, 30),
(1002, '2024-01-15', 'West', 'Office Supplies', 'Paper', 35.00, 5, 0.0, 5.00, 10),
(1003, '2024-02-20', 'East', 'Technology', 'Phones', 800.00, 1, 0.2, 120.00, 5),
(1004, '2024-03-05', 'South', 'Furniture', 'Tables', 450.00, 3, 0.15, 50.00, 25),
(1005, '2024-03-10', 'North', 'Technology', 'Accessories', 150.00, 2, 0.05, 15.00, 15);

-- Profit by category
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit,
       ROUND(SUM(profit)/SUM(sales) * 100, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY category;

-- Profit by sub-category
SELECT sub_category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM retail_sales
GROUP BY sub_category
ORDER BY total_profit DESC;

-- Correlation of inventory days to profit (via query export)
SELECT inventory_days, profit FROM retail_sales;
