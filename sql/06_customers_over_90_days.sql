/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Customers with More Than 90 Days Overdue

Business Question:
Which customers have more than 90 days overdue?

Description:
This query identifies customers with more than 90 days
of delinquency by combining customer demographic data
with loan information. It supports prioritization for
collections and credit risk management.
==========================================================
*/

-- Customers with more than 90 days overdue

SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.country,
    c.monthly_income,
    l.loan_type,
    l.amount_overdue,
    l.days_overdue

FROM `luis-melo-468018.credit_default_analysis.customers_project` AS c

INNER JOIN `luis-melo-468018.credit_default_analysis.loan_default_project` AS l
    ON c.customer_id = l.customer_id

WHERE l.days_overdue > 90

ORDER BY l.days_overdue DESC;
