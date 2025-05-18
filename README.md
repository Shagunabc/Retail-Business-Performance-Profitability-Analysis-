# Retail-Business-Performance-Profitability-Analysis-

## Objective
Analyze retail transactional data to find profit-draining categories, optimize inventory turnover, and identify seasonal trends.

---

## Tools Used
- SQL
- Python (Pandas, Seaborn)
- Tableau

---

## Step-by-Step Guide

### 1. Data Import and Cleaning (SQL)
```sql
-- Create table for retail data
CREATE TABLE retail_transactions (
    transaction_id INT,
    product_category VARCHAR(50),
    product_subcategory VARCHAR(50),
    sales DECIMAL(10,2),
    cost DECIMAL(10,2),
    quantity INT,
    inventory_days INT,
    region VARCHAR(50),
    transaction_date DATE
);

-- Remove rows with missing sales or cost
DELETE FROM retail_transactions
WHERE sales IS NULL OR cost IS NULL;

