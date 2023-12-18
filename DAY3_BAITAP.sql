---Ex1
SELECT NAME FROM CITY
WHERE POPULATION > 120000 
AND COUNTRYCODE = 'USA';
---Ex2
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';
---Ex3
select city,state from station
---Ex4
select city from station
where left(city,1) 
IN ('a','e','i','o','u');
---Ex5
select distinct city from station
where right (city,1) In ('a', 'e','i','o','u');
---Ex6
select distinct city
from station 
where left (city,1) not in ('a','e','i','o','u');
---Ex7
select name from Employee order by name;
---Ex8
select name from Employee 
where salary > 2000 
and months < 10;
---Ex9
select  product_id from Products
where  low_fats ='y'
AND  recyclable ='Y'
---Ex10
select name from  Customer
where  referee_id <> 2
OR referee_id IS NUll
---Ex12
select distinct author_id AS id from views
where author_id = viewer_id order by author_id ASC
---Ex11
select name, population,area from world 
Where area >= 3000000 or population >= 25000000
---Ex13
select DISTINCT part
from parts_assembly
where finish_date is null;
---Ex14
select * from lyft_drivers
where yearly_salary <= 30000
Or yearly_salary >= 70000;
