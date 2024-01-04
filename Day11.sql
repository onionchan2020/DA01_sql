---Ex1
SELECT CUN.CONTINENT, FLOOR(AVG(C.POPULATION))
FROM CITY AS C
JOIN COUNTRY AS CUN ON C.COUNTRYCODE = CUN.CODE\
GROUP BY CUN.CONTINENT
---Ex2
SELECT 
      ROUND(
      cast(sum(case when signup_sction is not null))
                  then 1 ELSE 0 end) as numberic)
      /count(user_id),2)
FROM emails
LEFT JOIN texts 
on emails.email_id = texts.email_id
and signup_action = 'confirmer'
---Ex3
SELECT B.age_bucket
SUM(case when activity_type = 'open'
then time_spent ELSE 0 end )as t_o,
SUM(case when activity_type = 'send'
then time_spent ELSE 0 end ) as t_s
FROM activities A
LEFT JOIN age_breakdown B
on A.user_id = B.user_id
GROUP BY B.age_bucket;
---Ex4
with cte1 as
(select c.*, p.product_category
from customer_contracts c
left join products p on c.product_id = p.product_id)
select customer_id
from cte1
group by customer_id
having count(distinct product_category) = (select count(distinct product_category) from product
---Ex5
  select
    manager.employee_id,
    manager.name,
   count(employee.employee_id) as reports_couunt,
   round (avg(employee.age)) as average_age
from Employees employee
inner join Employees manager
on employee.report_to = manager.employee_id
group by manager.employee_id,
         manager.name
order by manager.employee_id
  ---Ex6
  WITH cte AS
(SELECT product_id, SUM(unit) AS unit_feb
FROM Orders
WHERE YEAR(order_date) = 2020
AND MONTH(order_date) = 2
GROUP BY product_id)
SELECT p. product_name, c.unit_feb AS unit
FROM cte c
LEFT JOIN Products p
ON c.product_id = p.product_id
WHERE c.unit_feb >= 100
---Ex7
  SELECT a. page_id FROM pages a LEFT JOIN page_likes b on a.page_id=b.page_id
group by a.page_id
having count(distinct user_id)=0
order by a.page_id;

  
