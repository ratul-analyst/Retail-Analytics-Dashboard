SELECT USER(), CURRENT_USER();

CREATE USER 'powerbi_user'@'localhost'
IDENTIFIED BY 'PowerBI@2026_Retail!';

GRANT SELECT ON retail_analytics.*
TO 'powerbi_user'@'localhost';

FLUSH PRIVILEGES;


SELECT user, host
FROM mysql.user
WHERE user = 'powerbi_user';

SELECT
    ROUND(SUM(revenue), 2) AS total_revenue
FROM clean_transactions;

SELECT COUNT(DISTINCT invoice)
FROM clean_transactions;


SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM clean_transactions;


SELECT
ROUND(
    SUM(revenue) / COUNT(DISTINCT invoice),
    2
) AS average_order_value
FROM clean_transactions;