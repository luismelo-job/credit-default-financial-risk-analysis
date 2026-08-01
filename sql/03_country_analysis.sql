/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Country Overdue Balance Analysis

Business Question:
Which countries present the highest overdue balances?

Description:
This query joins customer and loan data to calculate the
total overdue amount by country, helping identify
geographic concentrations of financial risk.
==========================================================
*/

-- Total overdue amount by country

SELECT
    c.country,
    SUM(l.amount_overdue) AS total_overdue_amount
FROM `luis-melo-468018.credit_default_analysis.customers_project` AS c
INNER JOIN `luis-melo-468018.credit_default_analysis.loan_default_project` AS l
    ON c.customer_id = l.customer_id
GROUP BY c.country
ORDER BY total_overdue_amount DESC;
