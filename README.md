# Credit Default & Financial Risk Analysis

![SQL](https://img.shields.io/badge/SQL-Expert-blue?style=for-the-badge)
![Google BigQuery](https://img.shields.io/badge/Google_BigQuery-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data_Analysis-00897B?style=for-the-badge)
![Financial Risk](https://img.shields.io/badge/Financial_Risk-FF6F00?style=for-the-badge)
![Business Intelligence](https://img.shields.io/badge/Business_Intelligence-5E35B1?style=for-the-badge)

---

# Overview

This project presents an end-to-end SQL analysis using **Google BigQuery** to evaluate a portfolio of **300 delinquent loan accounts**.

The primary objective was to identify credit risk patterns, assess financial exposure, segment customers according to business rules, and generate actionable insights to support credit risk management and strategic decision-making.

---

# Dataset

The analysis is based on two relational datasets:

- **customers_project** – Customer demographic and financial information.
- **loan_default_project** – Loan details, overdue balances, and delinquency metrics.

Both datasets were integrated using **INNER JOIN** and analyzed through SQL aggregations, filtering, and customer segmentation techniques.

---

# Business Questions

This project answers the following business questions:

- Which loan type has the highest financial exposure?
- Which loan type has the highest average overdue amount?
- Which loan type has the highest average days overdue?
- Which countries present the highest overdue balances?
- Is there a relationship between monthly income and overdue amount?
- Do older customers accumulate longer payment delays?
- Which customers have more than 90 days overdue?
- How can customers be ranked according to credit risk?

---

# Technologies Used

- SQL (Google BigQuery)
- Data Analysis
- Data Cleaning
- Business Intelligence
- Financial Risk Analytics
- Customer Segmentation

---

# SQL Concepts Applied

Throughout this project, the following SQL concepts were applied:

- SELECT
- INNER JOIN
- WHERE
- GROUP BY
- ORDER BY
- CASE WHEN
- SUM()
- AVG()
- COUNT()
- LIMIT
- CONCAT()
- Customer Segmentation

---

# Key Findings

- Personal Loans represented the highest total financial exposure.
- Business Loans presented the highest average delinquency period.
- Italy recorded the highest average overdue amount.
- Monthly income alone was not a strong indicator of lower financial risk.
- Customers with prolonged delinquency and high overdue balances represented the highest financial exposure.
- A custom risk classification model successfully segmented customers into High, Medium, and Low Risk groups.

---

# Risk Classification Model

| Risk Level | Business Rules |
|------------|----------------|
| 🔴 High Risk | ≥180 overdue days OR ≥€7,000 overdue amount OR monthly income < €3,000 |
| 🟡 Medium Risk | 90–179 overdue days OR overdue amount between €4,000–€6,999 OR monthly income between €3,000–€4,000 |
| 🟢 Low Risk | Remaining customers |

---

# Repository Structure

```text
credit-default-financial-risk-analysis
│
├── README.md
├── report
│   └── Credit_Default_Financial_Risk_Analysis.pdf
│
├── sql
│   ├── 01_portfolio_kpis.sql
│   ├── 02_loan_type_analysis.sql
│   ├── 03_country_analysis.sql
│   ├── 04_income_analysis.sql
│   ├── 05_age_analysis.sql
│   ├── 06_customers_over_90_days.sql
│   └── 07_risk_classification.sql
│
└── images
    ├── 01_cover.png
    ├── 02_portfolio_kpis.png
    ├── 03_key_findings.png
    └── 04_risk_classification.png
```

---


📄 **[Credit Default & Financial Risk Analysis Report](report/Credit_Default_Financial_Risk_Analysis.pdf)**

---

# About the Author

## Luis Silva

Data Analytics professional with experience in SQL, Business Intelligence, Financial Analysis, and Business Analysis.

Currently focused on building data-driven solutions through SQL, Business Intelligence, and analytical storytelling while expanding expertise in Product Analytics and Financial Analytics.

🔗 **LinkedIn**

https://www.linkedin.com/in/luismelosilva

---

If you found this project interesting, feel free to connect with me on LinkedIn or explore my other repositories.
