---Ex1
SELECT NAME 
FROM  STUDENTS
WHERE Marks > 75
order by RIGHT(NAME, 3),ID;
---Ex2
select user_id,
concat (upper (left ( name,1)),lower right(name,length (name)-1))) as name
from Users
order by user_id,
---Ex3
SELECT  manufacturer
'$'|| ROUND( sum (total_sales)/1000000,0)|| '' ||'million' as sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY sum (total_sales) DESC,manufacturer
---Ex4
SELECT EXTRACT('month' from submit_date ) as mth
product_id,
ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY mth,product_id
ORDER BY mth,product_id
---Ex5
select sender_id
COUNT(message_id) AS message_count
from messages
WHERE extract (month from sent_date)=8 and (year from sent_date)=2020
GROUP BY sender_id
ORDER BY message_count desc
LIMIT 2
---Ex6
select tweet_id
from Tweets
where length(content)>15
---Ex7
selcect  activity_date,
count (distinct user_id) activity_users
from Activity
where activity_date between date_sub ('2019-07-27' ,interval 29 day)
and '2019-07-27'
group by activity_date
---Ex8
select 
count (employees_id) as number_employee
from employees
where extract (month from joining_date) between 1 and 7
abd extract (year from joining_date)=2022
---Ex9
select Positions ('a' in first_name) as  Positions 
from worker
where first_name=''Amitah'
  ---Ex10
  select substring (title,length(winery)+2,4)
from winemag_p2
where country='Macedonia'
