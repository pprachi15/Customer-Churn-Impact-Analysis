-- Overall Customer Churn Rate
SELECT
    COUNT(*) AS total_customers,
    SUM(is_churned) AS churned_customers,
    ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_percent
FROM customers;

-- Churn rate by tenure bucket
SELECT
    CASE
        WHEN tenure_months < 6 THEN '0–6 months'
        WHEN tenure_months BETWEEN 6 AND 12 THEN '6–12 months'
        WHEN tenure_months BETWEEN 12 AND 24 THEN '12–24 months'
        ELSE '24+ months'
    END AS tenure_bucket,
    COUNT(*) AS total_customers,
    SUM(is_churned) AS churned,
    ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY tenure_bucket
ORDER BY churn_rate_percent DESC;

-- Churn by segment
SELECT
    segment,
    COUNT(*) AS total_customers,
    SUM(is_churned) AS churned,
    ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY segment
ORDER BY churn_rate_percent DESC;

-- Churn by plan type
SELECT
    plan_type,
    COUNT(*) AS total_customers,
    SUM(is_churned) AS churned,
    ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY plan_type;

-- Churn by region
SELECT
    region,
    COUNT(*) AS total_customers,
    SUM(is_churned) AS churned,
    ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY region
ORDER BY churn_rate DESC;

-- Behavioral predictors of churn
SELECT
    ROUND(AVG(avg_session_per_week), 2) AS avg_sessions,
    ROUND(AVG(total_transactions), 2) AS avg_txn,
    ROUND(AVG(average_monthly_revenue), 2) AS avg_revenue
FROM customers
WHERE is_churned = 1;
--vs
SELECT
    ROUND(AVG(avg_session_per_week), 2) AS avg_sessions,
    ROUND(AVG(total_transactions), 2) AS avg_txn,
    ROUND(AVG(average_monthly_revenue), 2) AS avg_revenue
FROM customers
WHERE is_churned = 0;

-- Revenue impact of churn
SELECT
    SUM(average_monthly_revenue) AS total_monthly_revenue,
    SUM(CASE WHEN is_churned = 1 THEN average_monthly_revenue END) AS revenue_lost_monthly,
    ROUND(100.0 * SUM(CASE WHEN is_churned = 1 THEN average_monthly_revenue END)
        / SUM(average_monthly_revenue), 2) AS percent_revenue_at_risk
FROM customers;