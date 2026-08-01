/*
==========================================================
Project: Credit Default & Financial Risk Analysis
Author: Luis Silva
Tool: Google BigQuery

Analysis:
Age Group vs. Delinquency Analysis

Business Question:
Do older customers accumulate longer payment delays?

Description:
This query segments customers into age groups using a
CASE WHEN statement and calculates the number of
customers and the average days overdue for each group.
The objective is to identify whether customer age
influences delinquency behavior.
==========================================================
*/

-- Customer delinquency analysis by age group

SELECT
    CASE
        WHEN c.age BETWEEN 18 AND 30 THEN '18-30 Years'
        WHEN c.age BETWEEN 31 AND 45 THEN '31-45 Years'
        WHEN c.age BETWEEN 46 AND 60 THEN '46-60 Years'
        ELSE 'Over 60 Years'
    END AS age_group,

    COUNT(l.customer_id) AS total_customers,

    AVG(l.days_overdue) AS average_days_overdue

FROM `luis-melo-468018.credit_default_analysis.loan_default_project` AS l

INNER JOIN `luis-melo-468018.credit_default_analysis.customers_project` AS c
    ON l.customer_id = c.customer_id

GROUP BY age_group

ORDER BY average_days_overdue DESC;
