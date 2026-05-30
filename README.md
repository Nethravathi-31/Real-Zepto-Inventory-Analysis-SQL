# 🚀 Real Zepto Inventory Analysis Using PostgreSQL

## 📌 Project Overview

This project analyzes a real-world Zepto inventory dataset using PostgreSQL to uncover actionable business insights related to inventory management, pricing strategy, discount effectiveness, and revenue opportunities.

The project demonstrates the complete analytics workflow, including data validation, data cleaning, exploratory analysis, and business intelligence reporting using SQL.

---

## 🎯 Business Objectives

The primary objectives of this analysis were to:

* Assess overall inventory availability.
* Identify pricing and discount patterns.
* Discover high-value products that are out of stock.
* Estimate category-level revenue potential.
* Evaluate category-wise discount strategies.
* Analyze product value using price-per-gram metrics.
* Segment products based on package size.
* Measure inventory distribution across categories.

---

## 📂 Dataset Information

**Dataset:** Zepto Inventory Dataset

The dataset contains product-level information such as:

* Product Name
* Product Category
* Maximum Retail Price (MRP)
* Discount Percentage
* Discounted Selling Price
* Product Weight
* Available Quantity
* Inventory Status

---

## 🛠️ Technology Stack

| Tool       | Purpose                           |
| ---------- | --------------------------------- |
| PostgreSQL | Data Storage & Analysis           |
| SQL        | Data Cleaning & Business Analysis |

---

## 🗄️ Database Schema

### Table: zepto

| Column                 | Data Type          |
| ---------------------- | ------------------ |
| sku_id                 | SERIAL PRIMARY KEY |
| category               | VARCHAR(120)       |
| name                   | VARCHAR(150)       |
| mrp                    | NUMERIC(8,2)       |
| discountPercent        | NUMERIC(5,2)       |
| availableQuantity      | INTEGER            |
| discountedSellingPrice | NUMERIC(8,2)       |
| weightInGms            | INTEGER            |
| outOfStock             | BOOLEAN            |
| quantity               | INTEGER            |

---

## 🔍 Data Validation

To ensure data quality, the following checks were performed:

### Record Validation

* Verified total number of records.
* Inspected sample data.

### Missing Value Analysis

Checked NULL values across all columns.

### Category Validation

Identified unique product categories.

### Inventory Validation

Analyzed product availability status.

### Duplicate Analysis

Detected products appearing multiple times in the dataset.

---

## 🧹 Data Cleaning

### Invalid Price Detection

Products with:

* MRP = 0
* Discounted Selling Price = 0

were identified and reviewed.

### Data Standardization

Price values were converted from paise to rupees to improve readability and consistency.

### Invalid Record Removal

Records containing invalid pricing information were removed.

---

## 📊 Business Questions Solved

### 1. Which products offer the highest discounts?

Identified the Top 10 products with the highest discount percentages.

---

### 2. Which premium products are currently out of stock?

Analyzed products with:

* MRP greater than ₹500
* Out-of-stock status

---

### 3. Which categories generate the highest estimated revenue?

Estimated revenue using:

Revenue = Discounted Selling Price × Quantity

---

### 4. Which premium products receive minimal discounts?

Identified products where:

* MRP > ₹500
* Discount < 10%

---

### 5. Which categories provide the highest average discounts?

Calculated category-wise average discount percentages.

---

### 6. Which products provide the best value for money?

Computed price-per-gram metrics to evaluate product value.

---

### 7. How can products be segmented by size?

Products were categorized as:

* Low
* Medium
* Bulk

based on weight.

---

### 8. How is inventory weight distributed across categories?

Calculated total inventory weight per category.

---

## 📈 Key Business Insights

### Inventory Insights

* Several premium products were unavailable despite their high retail value.
* Inventory distribution varies significantly between categories.

### Revenue Insights

* A small number of categories contribute a substantial share of estimated revenue.
* Inventory availability directly impacts potential revenue generation.

### Pricing Insights

* Discount strategies differ significantly across categories.
* Some categories rely heavily on promotional pricing.

### Customer Value Insights

* Price-per-gram analysis identifies products providing better value to customers.
* Product size segmentation helps support inventory planning decisions.

---

## 📷 Project Outputs

The repository includes:

* SQL Scripts
* Query Outputs
* Analysis Screenshots
* Project Presentation

---

## 💻 SQL Concepts Demonstrated

* DDL Statements
* Data Validation
* Data Cleaning
* Filtering
* Sorting
* Aggregate Functions
* GROUP BY
* HAVING
* CASE Statements
* Business Analytics Queries

---

## 📁 Repository Structure

```text
Real-Zepto-Inventory-Analysis-SQL

├── README.md
├── zepto_analysis.sql
├── Zepto_Inventory_Analysis_Presentation.pdf
├── LICENSE
└── screenshots/
```

---

## 🎯 Conclusion

This project demonstrates how PostgreSQL can transform raw retail inventory data into meaningful business insights.

The analysis supports data-driven decision-making in:

* Inventory Management
* Pricing Optimization
* Revenue Analysis
* Discount Strategy Evaluation
* Product Performance Monitoring

---

## 👩‍💻 Author

Nethravathi M

Aspiring Data Analyst

GitHub: [https://github.com/Nethravathi-31]

LinkedIn:[https://www.linkedin.com/in/nethravathi-m-75727a272]

