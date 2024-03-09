---EX1
WITH CTE AS(
SELECT *,LAG(current_year_spend) OVER(PARTITION BY PRODUCT_ID) AS PREV_YEAR_SPEND
FROM (
SELECT EXTRACT(YEAR FROM TRANSACTION_DATE) AS YEAR,PRODUCT_ID,SPEND AS CURRENT_YEAR_SPEND
FROM user_transactions)S)
SELECT *, ROUND((CURRENT_YEAR_SPEND-prev_year_spend)/prev_year_spend*100,2) AS YOY_RATE
FROM CTE
---EX2
WITH cte AS 
(SELECT *, RANK() OVER(PARTITION BY card_name OREDR BY
issue_year,issued_month) as rnk
  FROM monthly_cards_issued_amount
  FROM cte
  WHERE rnk=1
  ORDER BY issued_amount DESC
  ---EX3
  SELECT 
    user_id,
    COUNT(*) AS purchase_count,
    MIN(purchase_amount) AS min_purchase,
    MAX(purchase_amount) AS max_purchase,
    AVG(purchase_amount) AS avg_purchase
FROM 
    purchases
GROUP BY 
    user_id
ORDER BY 
    purchase_count DESC;
---EX4
SELECT 
    tweet_id,
    user_id,
    tweet_text,
    created_at,
    AVG(created_at) OVER (
        ORDER BY created_at
        ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
    ) AS rolling_average
FROM 
    tweets;
---ex6
SELECT 
    user_id,
    COUNT(*) AS payment_count,
    MAX(amount) AS max_payment_amount,
    MIN(amount) AS min_payment_amount,
    AVG(amount) AS avg_payment_amount
FROM 
    payments
GROUP BY 
    user_id
HAVING 
    COUNT(*) > 1
ORDER BY 
    payment_count DESC;
---ex7
SELECT 
    item_id,
    SUM(quantity * price_per_item) AS gross_sales
FROM 
    orders
GROUP BY 
    item_id
ORDER BY 
    gross_sales DESC
LIMIT 10;
---ex8
SELECT 
    artist_id,
    SUM(stream_count) AS total_streams
FROM 
    streams
GROUP BY 
    artist_id
ORDER BY 
    total_streams DESC
LIMIT 5;

