/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Loan Type Financial Exposure

Business Question:
Which loan type has the highest financial exposure?

Description:
This query calculates the total overdue amount for each
loan type to identify which products represent the
highest financial exposure in the delinquent portfolio.
==========================================================
*/

-- Total overdue amount by loan type

SELECT
    loan_type,
    SUM(amount_overdue) AS total_overdue_amount
FROM `luis-melo-468018.credit_default_analysis.loan_default_project`
GROUP BY loan_type
ORDER BY total_overdue_amount DESC;
