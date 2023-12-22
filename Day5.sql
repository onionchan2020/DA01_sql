---Ex1
select distinct city from station 
where ID % 2 = 0;
---EX2
SELECT COUNT (CITY) - COUNT ( DISTINCT CITY ) FROM STATION
---EX4
select 
round (cast(sum(item_count * order_occurrences)/ sum(order_occurrences)
decimal),1) as mean
FROM ITEM_PER_ORDER
  
---EX5
SELECT  candidate_ID
FROM  candidates
WHERE skill in ( 'Python', 'Tableau', 'PostgreSQ'L )
GROUP BY candidate_ID
HAVING COUNT( skill ) = 3;
---EX6
SELECT User_id
DATE(MAX(post_date)) - DATE(MIN(post_date)) AS days_between
FROM posts
WHERE (post_date>= '2021-01-01' and '2022-01-01'
GROUP BY User_id 
HAVING COUNT( POSTS_ID)>=2; 
---EX7
SELECT card_name
MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC ;
---EX8
SELECT manufacturer
COUNT( drug) as drug_count,
SUM(cogs-total_sales) AS total_loss
FROM pharmacy_sales
WHERE total_sales< cogs
GROUP BY  manufacturer
ORDER BY total_loss DESC;
---EX9
select * from cinema
where id%2=1 and description <>'boring'
order by rating DESC
---EX10
SELECT * FROM  Teacher_ID
COUNT DISTINCT subject_id AS COUNT
FROM Teacher
GROUP BY Teacher_id
---EX11
SELECT user_id,COUNT (follower_id) AS follower_count
from followers
group by user_id
oder by user_id
---EX12
select class from Courses
group by class
having count(student)>=5
