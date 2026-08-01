/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Portfolio Key Performance Indicators (KPIs)

Business Question:
What are the main KPIs of the delinquent loan portfolio?

Description:
This query calculates the primary portfolio indicators,
including the total number of customers, total overdue
amount, average overdue amount, and average days overdue.
These KPIs provide a high-level overview of the portfolio's
financial risk and delinquency profile.
==========================================================
*/

-- Portfolio KPIs

SELECT
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(amount_overdue) AS total_overdue_amount,
    AVG(amount_overdue) AS average_overdue_amount,
    AVG(days_overdue) AS average_days_overdue
FROM `luis-melo-468018.credit_default_analysis.loan_default_project`;
