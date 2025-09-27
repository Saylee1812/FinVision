

# FinVision – Banking Domain End-to-End Data Analytics Project 🏦

## 📌 Project Overview

**FinVision** is an end-to-end data analytics pipeline designed for the **banking domain**, aimed at extracting meaningful insights from customer data.
This project demonstrates the complete journey:

**Excel (Raw Data) → MySQL (Database) → Python (EDA) → SQL (Analysis) → Power BI (Dashboarding)**

The primary objective is to analyze customer behavior, understand product distribution, evaluate risk profiles, and measure advisor performance to support **strategic decision-making**.

---

## 🚀 Features & Deliverables

✔️ **End-to-End Pipeline**: ETL + Database + EDA + SQL + Visualization
✔️ **Relational Database**: Created structured schema in **MySQL** and loaded raw banking data
✔️ **Exploratory Data Analysis (EDA)**: Statistical analysis, correlations, and data cleaning using **Python (Pandas, NumPy, Matplotlib, Seaborn)**
✔️ **SQL Queries**: Business-driven queries on deposits, lending, demographics, and advisors
✔️ **Interactive Dashboard**: Multi-page **Power BI** dashboard with KPIs, slicers, and drill-down insights

---

## 🛠 Technology Stack

| Category           | Tools Used                                      |
| ------------------ | ----------------------------------------------- |
| **Data Source**    | Excel (converted to CSV)                        |
| **Database**       | MySQL, MySQL Workbench                          |
| **EDA & Analysis** | Python, Pandas, NumPy, Matplotlib, Seaborn      |
| **Visualization**  | Power BI (with MySQL connection + DAX measures) |

---

## 🔄 Project Workflow

### 1️⃣ Data Preparation (MySQL)

* Converted **4 Excel sheets → CSV format**
* Standardized column names (no spaces/special chars)
* Created **`bank` database** with schema (primary & foreign keys)
* Loaded CSV files into MySQL tables

### 2️⃣ Exploratory Data Analysis (Python)

* Connected Python (Jupyter Notebook) to MySQL
* Loaded data into **Pandas DataFrames**
* Performed:

  * Descriptive statistics (mean, median, nulls, distributions)
  * Correlation analysis (income, deposits, lending, savings)
  * Data cleaning & handling missing values

### 3️⃣ SQL Analysis

* Joined dimension tables with Clients table
* Key queries answered:

  * Total deposits/lending
  * Client demographics (age, nationality, occupation)
  * Banking relationships & loyalty tiers
  * Advisor performance metrics

### 4️⃣ Dashboarding (Power BI)

* Connected Power BI to MySQL
* Designed multi-page dashboard with:

  * **Overview Page** (clients, deposits, lending, risk profiles)
  * **Customer Demographics** (age, nationality, occupation)
  * **Products & Relationships** (lending vs deposits, loyalty tiers)
  * **Advisor Insights** (correlations, KPIs)
* Added **slicers, filters, drill-downs** for interactivity

---

## 📊 Key Insights

### Executive Summary

* **Total Clients:** 3,000
* **Total Deposits:** $2.015B
* **Total Business Lending:** $2.60B
* **Loyalty Tier:** *Jade* has the largest client share
* **Risk Profile:** Most clients fall into **Risk Weighting 2**

### Customer Insights

* Age group **25–50 years** dominates the customer base
* Majority clients are **European (1,309)**
* Common occupations include Structural Analysis Engineer & Associate Professor

### Product & Risk Insights

* **Private Bank relationship** accounts for the largest lending ($1.16B, ~42.75%)
* Deposits are highly concentrated in **Risk Weighting 2 clients**

### Advisor Insights

* Strong positive correlations:

  * Bank Deposits ↔ Checking Accounts (0.84)
  * Bank Deposits ↔ Saving Accounts (0.75)
* **Income is not a strong predictor** of savings or borrowings
* **Superannuation savings** are largely independent of day-to-day banking products

---


## 📽 Dashboard Walkthrough  

![Dashboard Demo](assets/FinVisiom_Dashboard.gif)  


---

## 🧩 How to Reproduce

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/finvision.git
   cd finvision
   ```

2. **Setup Database (MySQL)**

   * Create a database: `CREATE DATABASE bank;`
   * Import provided CSV files into tables

3. **Run EDA Notebook**

   * Open `FinVision_EDA.ipynb` in Jupyter Notebook
   * Install dependencies:

     ```bash
     pip install pandas numpy matplotlib seaborn mysql-connector-python
     ```
   * Run all cells to perform data cleaning & EDA

4. **Power BI Dashboard**

   * Open the `.pbix` file 
   * Connect Power BI to the `bank` database
   * Refresh visuals to generate insights

---

## 📌 Deliverables

* 📒 **Jupyter Notebook** → Exploratory Data Analysis
* 🗄 **MySQL Database** → Structured banking data
* 📊 **Power BI Dashboard** → Executive insights


---

## 👤 Author

**Saylee Shirke**
(Data Science Enthusiast | Python | SQL | Power BI | Data Analytics)

---

✨ This project demonstrates an **end-to-end data analytics workflow** in the **banking sector**—bridging raw data, statistical analysis, business logic, and visualization for decision-making.

---

Would you like me to also **extract screenshots** from your dashboard video and format them into the README (as image placeholders), so your GitHub page looks more visually engaging?
