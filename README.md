
# 🏦 FinVision – Banking Domain End-to-End Project

## Project Overview
It covers the entire lifecycle:
➡️ Raw Data Preparation
➡️ Database Creation
➡️ Exploratory Data Analysis (EDA)
➡️ Advanced SQL Querying
➡️ Dynamic Dashboard Visualization in **Power BI**



---

## 🚀 Key Features & Deliverables

* **End-to-End Pipeline:** ETL (Excel → MySQL) → EDA (Python/Pandas) → SQL Analysis → Visualization (Power BI)
* **Database Management:** Built a relational database (`bank`) in **MySQL** with defined schema & loaded structured CSV data
* **Data Analysis:** Statistical analysis & aggregations to address core business questions
* **Interactive Dashboard:** Multi-page **Power BI** dashboard with KPIs, slicers, and drill-down visualizations

---

## 🛠 Technology Stack

| Category                      | Tool / Library                           | Usage                                               |
| ----------------------------- | ---------------------------------------- | --------------------------------------------------- |
| **Data Source**               | Microsoft Excel                          | Raw data (4 files converted to CSV)                 |
| **Data Storage**              | MySQL, MySQL Workbench                   | Database creation, schema definition, data loading  |
| **Data Preparation / EDA**    | Python (Jupyter Notebook), Pandas, NumPy | Data cleaning, descriptive statistics, correlations |
| **Visualization (EDA)**       | Matplotlib, Seaborn                      | Histograms, Boxplots, Heatmaps                      |
| **Visualization (Dashboard)** | Power BI                                 | MySQL connection, DAX measures, dashboard creation  |

---

## 🔄 Project Workflow

### 1️⃣ Data Preparation (MySQL)

* Converted 4 raw Excel files → CSV
* Standardized column names (removed spaces & special chars)
* Created `bank` database with schema (PKs, FKs, data types)
* Uploaded CSVs into tables using MySQL Workbench

### 2️⃣ Exploratory Data Analysis (Python)

* Connected Jupyter Notebook (Python) to MySQL
* Loaded tables into Pandas DataFrames
* **Performed:**

  * Descriptive statistics (mean, median, nulls, distributions)
  * Correlation analysis (income, deposits, lending, savings)
  * Visualizations with Matplotlib & Seaborn

### 3️⃣ SQL Analysis & Transformation

* Cleaned missing values, duplicates, inconsistencies
* Joined dimension tables with Clients table
* Ran queries to analyze:

  * Deposits & lending totals
  * Client demographics (age, nationality, occupation)
  * Loyalty tiers & relationships
  * Advisor performance

### 4️⃣ Dashboarding (Power BI)

* Connected Power BI to MySQL (live connection)
* Built pages: **Overview**, **Customer Demographics**, **Products & Relationships**, **Investment & Advisor Insights**
* Implemented slicers, filters, and drill-down charts for interactivity

---

## 📊 Key Insights

### 📌 Executive Summary

* 👥 **Total Clients:** 3,000
* 💰 **Total Deposits:** $2.015 Billion
* 🏦 **Total Business Lending:** $2.60 Billion
* 🎖 **Top Loyalty Tier:** Jade
* ⚖️ **Most Common Risk Weighting:** 2 (1,222 clients)

### 👥 Customer Demographics

* Majority clients: **Age 25–50**
* Largest nationality group: **European (1,309)**
* Frequent occupations: Structural Analysis Engineer, Associate Professor (28 clients each)

### 💳 Product & Relationship Insights

* **Private Bank** → Highest lending ($1.16B / 42.75%)
* **Risk Weighting 2** → Majority of deposits

### 👨‍💼 Advisor Insights

* Strong positive correlations:

  * Bank Deposits ↔ Checking Accounts (0.84)
  * Bank Deposits ↔ Saving Accounts (0.75)
* Income is **not a strong predictor** of savings/borrowing
* Superannuation savings are **independent** of loans & deposits

---

## 📽 Dashboard Walkthrough

Here’s a quick preview of the interactive dashboard 👇

![Dashboard Demo](assets/FinVision_Dashboard.gif)


## 🛠 Setup Guide

### Clone the Repository

```bash
https://github.com/Saylee1812/FinVision.git
cd FinVision
```

### Setup Database (MySQL)

* Create a database:

  ```sql
  CREATE DATABASE bank;
  ```
* Import provided CSV files into tables

### Run EDA Notebook

* Open `FinVision_EDA.ipynb` in Jupyter Notebook
* Install dependencies:

  ```bash
  pip install pandas numpy matplotlib seaborn mysql-connector-python
  ```
* Run all cells to perform data cleaning & EDA

### Power BI Dashboard

* Open the `.pbix` file (if included)
* Connect Power BI to the `bank` database
* Refresh visuals to generate insights

---

