# Credit Default & Financial Risk Analysis

## Overview

This project demonstrates an end-to-end SQL analysis using **Google BigQuery** to evaluate a portfolio of **300 delinquent loan accounts**. The objective was to identify credit risk patterns, assess financial exposure, and generate actionable business insights to support credit risk management.

---

## Business Questions

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

## Technologies Used

- SQL
- Google BigQuery
- Data Analysis
- Financial Risk Analysis
- Business Intelligence

---

## SQL Concepts Applied

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
- Customer Segmentation

---

## Key Findings

- Personal Loans represented the highest total financial exposure.
- Business Loans presented the highest average delinquency period.
- Italy recorded the highest average overdue amount.
- Monthly income alone was not a strong indicator of lower financial risk.
- A custom risk classification model successfully identified High, Medium, and Low Risk customers.

---

## Risk Classification Model

| Risk Level | Criteria |
|------------|----------|
| 🔴 High Risk | ≥180 overdue days, ≥€7,000 overdue amount, monthly income < €3,000 |
| 🟡 Medium Risk | 90–179 overdue days OR overdue amount between €4,000–€6,999 OR monthly income between €3,000–€4,000 |
| 🟢 Low Risk | Remaining customers |

---

## Repository Structure

```text
credit-default-financial-risk-analysis/
│
├── README.md
├── report/
├── sql/
└── images/
```

---

## Author

**Luis Silva**

Aspiring Data Analyst passionate about SQL, Business Intelligence, Financial Analytics, and Data Storytelling.

**LinkedIn:** www.linkedin.com/in/luismelosilva
