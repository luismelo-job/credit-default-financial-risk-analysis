/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Customer Risk Classification

Business Question:
How can customers be classified according to credit risk?

Description:
This query combines customer and loan information to
classify each customer into High, Medium, or Low Risk
based on business-defined rules considering delinquency,
financial exposure, and monthly income.
==========================================================
*/

-- Customer Risk Classification

SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.country,
    c.monthly_income,
    l.loan_type,
    l.amount_overdue,
    l.days_overdue,

    CASE
        WHEN l.days_overdue >= 180
             OR l.amount_overdue >= 7000
             OR c.monthly_income < 3000
        THEN 'High Risk'

        WHEN l.days_overdue BETWEEN 90 AND 179
             OR l.amount_overdue BETWEEN 4000 AND 6999
             OR c.monthly_income BETWEEN 3000 AND 4000
        THEN 'Medium Risk'

        ELSE 'Low Risk'
    END AS risk_level

FROM `luis-melo-468018.credit_default_analysis.customers_project` AS c

INNER JOIN `luis-melo-468018.credit_default_analysis.loan_default_project` AS l
    ON c.customer_id = l.customer_id

ORDER BY
    CASE
        WHEN risk_level = 'High Risk' THEN 1
        WHEN risk_level = 'Medium Risk' THEN 2
        ELSE 3
    END,
    l.days_overdue DESC,
    l.amount_overdue DESC

LIMIT 20;
