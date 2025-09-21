# Retail Orders ELT Analytics Project  

## Project Overview  
Retail businesses generate massive amounts of raw data every day. However, without proper processing and analysis, this data remains underutilized. The goal of this project is to **extract, load, and transform (ELT)** a retail orders dataset, and then analyze it using **SQL and Python** to uncover actionable insights that can drive revenue growth, improve operational efficiency, and strengthen decision-making.  

This project is designed as a **portfolio project** to showcase data analytics skills across **Python, SQL, and business intelligence problem-solving.**  

---

## Dataset  
The dataset was sourced using the **Kaggle API**:  
[Retail Orders Dataset](https://www.kaggle.com/datasets/ankitbansal06/retail-orders)  

### Key Attributes:  
- `order_id` – Unique identifier for each order  
- `order_date` – Timestamp of the transaction  
- `ship_mode` – Shipping method  
- `customer_id` – Unique identifier for customers  
- `region` – Market region (e.g., East, West, Central)  
- `category` / `sub_category` – Product classification  
- `sale_price` – Transaction revenue  
- `profit` – Profit margin  

---

##  Workflow  
1. **Extraction:**  
   - Used Kaggle API to fetch the dataset programmatically.  

2. **Loading & Transformation (Python):**  
   - Cleaned and pre-processed the raw CSV using `pandas`.  
   - Conducted sanity checks, handled missing values, and standardized columns.  

3. **Analytics (SQL in SSMS):**  
   - Designed queries to generate **KPIs and insights**, such as:  
     - Top 10 revenue-generating products.  
     - Top 5 highest-selling products in each region.  
     - Month-over-month growth comparisons (2022 vs 2023).  
     - Categories and sub-categories with highest growth and profitability.  

---

## 💡 Key Business Insights  
- Identify **high-value products** that contribute the most to revenue.  
- Detect **regional bestsellers** to optimize inventory and supply chain.  
- Compare **year-over-year growth trends** for performance monitoring.  
- Understand **category-level seasonality** to plan targeted campaigns.  
- Pinpoint **emerging sub-categories** with strong profit growth for expansion.  

---

##  Business Value & Use Case  
Retail managers and analysts can leverage these insights to:  
- **Enhance decision-making:** Data-driven strategy for sales, marketing, and procurement.  
- **Improve efficiency:** Identify slow vs fast movers, optimize product mix, and allocate resources better.  
- **Boost profitability:** Focus on high-margin sub-categories and regions.  
- **Forecast growth:** Monitor year-over-year performance for sustainable scaling.  

This project exemplifies how **data analytics adds measurable efficiency to business operations** by transforming raw data into **actionable intelligence**.  

---

##  Portfolio Relevance  
This repository demonstrates proficiency in:  
- **Data Engineering:** Automating data extraction via APIs.  
- **Data Analysis:** Using SQL for structured business queries.  
- **Python (pandas):** Data cleaning and transformation.  
- **Business Acumen:** Translating raw data into insights that matter for business growth.  

It is well-suited to highlight skills for **Data Analyst / Business Analyst roles**.  

---

##  Next Steps (Future Enhancements)  
- Build dashboards in **Power BI / Tableau** for visualization.  
- Automate the ELT pipeline using **Airflow or Prefect**.  
- Expand into **predictive analytics** for demand forecasting.  

