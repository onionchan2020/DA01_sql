---ex2
with cte AS
(SELECT category,product,sum(spend) as total_spend
FROM product_spend
where extract(year from transaction_date)= 2022
group by category,product),

cte2 as 
(select *,row_number () over (partition by  category 
order by total_spend desc) as rnk
from cte)

select  category ,product,total_spend
from cte2
where rnk <=2;

---ex3
WITH cte AS

2 (SELECT policy_holder_id

3FROM callers

4 GROUP BY policy_holder_id 5 HAVING COUNT(DISTINCT case id) >=3)

6 7 SELECT COUNT(policy_holder_id) AS member count 8

FROM cte;
---ex4
SELECT p.page_id

FROM pages p

LEFT JOIN page_likes pl

ON p.page_id= pl.page_id

edin

WHERE pl.page_id IS NULL

ORDER BY p.page_id
---ex5
WITH cte AS

(SELECT DISTINCT user id

FROM user_actions

WHERE EXTRACT(MONTH FROM event_date) =7

nkedin

AND EXTRACT(YEAR FROM event_date) = 2022

INTERSECT

SELECT DISTINCT user id

e the Data



FROM user actions

WHERE EXTRACT(MONTH FROM event_date) =6 10 AND EXTRACTCYEAR FROM event_date)=2022)

Intersect
Select distinct user_id
From user_actions
Where extract (year from event_date) =2022 



022. Output

SELECT '7' AS month, COUNT(user_id) AS monthly_active_user

active users

FROM cte;
Bạn đã gửi
WITH cte AS

(SELECT DISTINCT user id

FROM user_actions

WHERE EXTRACT(MONTH FROM event_date) =7

nkedin

AND EXTRACT(YEAR FROM event_date) = 2022

INTERSECT

SELECT DISTINCT user id
e the Data
FROM user actions

WHERE EXTRACT(MONTH FROM event_date) =6 10 AND EXTRACTCYEAR FROM event_date)=2022)

ook user
022. Output

SELECT '7' AS month, COUNT(user_id) AS monthly_active_user

active users

FROM cte;
---ex6
SELECT DATE_FORMAT trans_date, '%Y-%m' AS month, country, COUNT id AS trans_count, SUM CASE WHEN state ='approved' THEN 1 ELSE END AS approved_count, SUM amount AS trans totgl_amount, SUM CASE WHEN state = 'approved THEN amount ELSE END AS

approved_total_amount

FROM Transactions GROUP BY DATE_FORMAT trans_date, '%Y-%m'), country
  ---ex7
  SELECT customer id

FROM Customer

GROUP BY customer_id

HAVING COUNT( DISTINCT product_key) =(SELECT

COUNT( DISTINCT product_key )FROM Product)
---ex9
  SELECT customer id

FROM Customer

GROUP BY customer_id

HAVING COUNT( DISTINCT product_key) =(SELECT

COUNT( DISTINCT product_key )FROM Product)

  ---ex10
  WITH cte AS

 (SELECT company_id, LOWER(title), LOWER(description),

COUNT(DISTINCT job_id) AS num_dup

FROM job_listings

GROUP BY company_id, LOWER(title), LOWER(dęscription) HAVING COUNT(DISTINCT job_id) >1)

Data

SELECT COUNT(DISTINCT company_id) AS co_w_duplicate_jobs

FROM cte;
---ex12
  WITH cte AS

(SELECT requester_id AS id, accepter_id

FROM RequestAccepted

UNION

SELECT accepter_id AS id, requester id

FROM RequestAccepted)

SELECT id, COUNT(DISTINCT accepter_id) AS num

ch is

FROM cte

GROUP BY id

ORDER BY num DESC

LIMIT 1;
  


  
