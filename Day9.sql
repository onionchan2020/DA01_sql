---Ex1
SELECT 
    SUM(case when device_type='laptop'then 1 else 0 end) AS laptop_views
    SUM(case when device_type in ('tablet','phone')then 1 else 0 end )
as laptop_views
FROM viewership;
---Ex2
select x,y,z,
case when x+y>z and x+z>y and y+z>x then 'yes'
else 'no'
end as Triangle
from Triangle
---Ex3
SELECT COUNT(case when COALESCE(call_category,'n/a')in ('n/a')then 
1 else 0 end ) ::numeric/
COUNT(case_id) ::numeric)*100,1)call_percentage
FROM callers;
---Ex4
select name from  Customer
where  referee_id not in (2) or referee_id is null;
---Ex5
SELECT survived,
       sum(CASE
               WHEN pclass = 1 THEN 1
               ELSE 0
           END) AS first_class,
       sum(CASE
               WHEN pclass = 2 THEN 1
               ELSE 0
           END) AS second_class,
       sum(CASE
               WHEN pclass = 3 THEN 1
               ELSE 0
           END) AS third_class
FROM titanic
GROUP BY survived
