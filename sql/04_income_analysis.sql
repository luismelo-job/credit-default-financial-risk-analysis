/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Income vs. Overdue Amount Analysis

Business Question:
Is there a relationship between monthly income and
the average overdue amount?

Description:
This query segments customers into income categories
using a CASE WHEN statement and calculates both the
number of customers and the average overdue amount
for each income group.
==========================================================
*/

-- Customer segmentation by monthly income

SELECT
    CASE
        WHEN c.monthly_income <= 2000 THEN 'Low Income'
        WHEN c.monthly_income BETWEEN 2001 AND 4000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_category,

    COUNT(l.customer_id) AS total_customers,

    AVG(l.amount_overdue) AS average_amount_overdue

FROM `luis-melo-468018.credit_default_analysis.loan_default_project` AS l

INNER JOIN `luis-melo-468018.credit_default_analysis.customers_project` AS c
    ON l.customer_id = c.customer_id

GROUP BY income_category

ORDER BY average_amount_overdue DESC;
