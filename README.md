
# FinVision – Banking Domain End-to-End Project 🏦

## Project Overview

The **FinVision** project is a comprehensive, end-to-end data analytics pipeline focused on gaining valuable insights from banking customer data. It covers the entire lifecycle, from raw data preparation and database creation to Exploratory Data Analysis (EDA), advanced SQL querying, and dynamic dashboard visualization in Power BI.

The core goal is to understand customer behavior, product distribution, risk profiles, and advisor performance to support strategic business decisions within the banking sector.

---

## Key Features & Deliverables

* **End-to-End Pipeline:** Demonstrates proficiency across the entire data stack: ETL (Excel to MySQL) → EDA (Python/Pandas) → SQL Analysis → Visualization (Power BI).
* **Database Management:** Created a relational database (`bank`) in **MySQL** with defined schema and loaded CSV data into structured tables.
* **Data Analysis:** Performed statistical analysis and created aggregations to address core business questions.
* **Interactive Dashboard:** Developed a multi-page **Power BI** dashboard (`FinVision`) with key performance indicators (KPIs) and interactive visualizations.

---

## Technology Stack

| Category | Tool / Library | Usage |
| :--- | :--- | :--- |
| **Data Source** | Microsoft Excel | Raw data files |
| **Data Storage** | MySQL, MySQL Workbench | Database creation (`bank`), schema definition, and data loading |
| **Data Preparation/EDA** | Python (Jupyter Notebook), Pandas, NumPy | Data cleaning, descriptive statistics, distributions, and correlation analysis |
| **Visualization (EDA)** | Matplotlib, Seaborn | Histograms, bar charts, and correlation heatmap |
| **Visualization (Dashboard)** | **Power BI** | Connecting to MySQL, DAX measures, and interactive dashboard creation |

---

## Project Phases & Workflow

The project was executed in five distinct phases:

### 1. Data Preparation (MySQL)

* [cite_start]**Data Conversion:** Four raw Excel files were converted to **CSV format**[cite: 4].
* [cite_start]**Standardization:** Ensured all column names were standardized (no spaces or special characters)[cite: 5].
* [cite_start]**Database Setup:** Created a database named `bank` in MySQL [cite: 7] [cite_start]and defined table schema, including primary and foreign keys[cite: 8].
* [cite_start]**Data Loading:** CSV files were loaded into MySQL tables using the Import Wizard or `LOAD DATA INFILE`[cite: 10].

### 2. Exploratory Data Analysis (EDA) - Python

* [cite_start]**Environment Setup:** Python was connected to the MySQL database using the `pymysql` connector[cite: 14].
* [cite_start]**Data Loading:** Data from the `bank.banking` table and related dimension tables (e.g., `gender`, `bankingrelationship`) was loaded into **Pandas DataFrames**[cite: 15, 60].
* **Analysis Performed:**
    * [cite_start]**Descriptive Statistics:** Calculated mean, median, and checked for null values and outliers[cite: 17, 49, 51].
    * [cite_start]**Distributions:** Visualized distributions for key features like `Age`, `Estimated Income` (grouped into Low/Mid/High bands), `Loyalty Classification`, and `Risk Weighting`[cite: 18, 52].
    * [cite_start]**Correlations:** Analyzed correlations between numerical features like `Bank Deposits`, `Business Lending`, `Estimated Income`, and `Superannuation Savings`[cite: 19, 227].

### 3. SQL Analysis & Data Transformation

This phase focused on data cleaning and answering specific business questions using advanced SQL queries and transformations.

* [cite_start]**Data Cleaning:** Handled missing values and standardized data types/formats[cite: 26, 27].
* [cite_start]**Dimensional Joins:** Joined dimension tables (e.g., `Gender`, `BankingRelationship`, `InvestmentAdvisor`) with the main `banking` fact table[cite: 29].
* **Key SQL Queries:**
    * [cite_start]**Overview/KPIs:** Calculated total clients, total deposits, total lending, and average risk weighting[cite: 75, 76, 79, 81, 83].
    * [cite_start]**Demographics:** Analyzed client distribution by age group, gender, nationality, and top occupations[cite: 84, 85, 91, 101, 106].
    * [cite_start]**Product/Relationship Insights:** Determined total/average deposits and lending broken down by `Banking Relationship` and `Loyalty Classification`[cite: 113, 119, 125].
    * [cite_start]**Advisor Performance:** Calculated clients handled and deposits/lending managed per investment advisor[cite: 135, 137, 141].
* [cite_start]**Aggregations:** Created aggregated tables/SQL Views for use as data sources in Power BI[cite: 35].

### 4. Dashboarding (Power BI)

[cite_start]A branded dashboard named **FinVision** [cite: 49] [cite_start]was created, connecting live to the MySQL database[cite: 38].

| Page | Key Components | Purpose |
| :--- | :--- | :--- |
| **1. Overview** | [cite_start]KPI Cards (Total Clients: 3000, Total Deposits: $\text{2.015M}$, Total Lending: $\text{2.60BN}$ [cite: 41][cite_start]), Donut Chart (Loyalty Classification), Bar Chart (Risk Weighting Distribution), Line Chart (Client Growth Trend)[cite: 161, 167]. | Provides a high-level executive summary of the bank's total scale and key distributions. |
| **2. Customer Demographics** | [cite_start]KPI Cards, Slicer (Gender), Bar Chart (Age Distribution), Treemap (Nationality Distribution), Matrix/Table (Nationality vs. Loyalty Class, Occupation vs. Properties Owned)[cite: 176, 177, 187, 190, 193]. | Deep dive into customer profile segmentation for targeted marketing/service. |
| **3. Banking Products & Relationships** | [cite_start]KPI Cards (Checking/Savings/Foreign Accounts), Bar Chart (Deposits by Relationship), Pie Chart (Lending by Relationship), Stacked Bar (Risk vs. Deposits)[cite: 201, 202, 207]. | Visualizes product uptake, deposit, and lending values across different banking tiers. |
| **4. Investment & Advisor Insights** | [cite_start]KPI Cards (Total Advisors, Avg. Clients per Advisor), Bar Chart (Clients per Advisor), Line Chart (Bank Loan/Lending per Occupation), Correlation Heatmap (Hidden with insights text box)[cite: 214, 218, 222, 227]. | Tracks advisor performance and identifies correlations between client financial attributes (e.g., income, savings, loans). |

---

## Key Insights from EDA & Analysis

### Quantitative Insights

* [cite_start]**Total Clients:** The bank currently serves **3,000** clients[cite: 77, 162].
* [cite_start]**Total Deposits:** The total value of bank deposits is $\mathbf{2.015}$ million[cite: 79, 163].
* [cite_start]**Total Lending:** The total business lending amount is $\mathbf{2.60}$ billion[cite: 81, 164].
* [cite_start]**Age Distribution:** The majority of clients fall within the **25-50** age group[cite: 94].
* [cite_start]**Loyalty Tier:** The **Jade** loyalty tier accounts for the highest number of total clients[cite: 168].

### Correlation Insights (from Heatmap)

* [cite_start]**Strong Positive Correlation** exists between `Bank Deposits` and `Checking Accounts` ($\text{0.84}$) and `Saving Accounts` ($\text{0.75}$), indicating a natural relationship where total deposits feed into these account types[cite: 227].
* [cite_start]**Weak-to-Moderate Correlation** exists between `Estimated Income` and other financial features ($\text{0.26}$ – $\text{0.37}$), suggesting that income alone is not a strong predictor of client balances or debt[cite: 227].
* [cite_start]**Superannuation Savings** show a low correlation ($\sim\text{0.2}$) with other variables, suggesting that retirement savings are mostly independent of other daily financial products[cite: 227].
