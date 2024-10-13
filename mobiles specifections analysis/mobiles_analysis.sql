-- mobile sales and specification analysis 
-- import data 

-- createdatabase
create database mobiles;

-- use databade mobiles
use mobiles;

-- display the data 
select* from mobile;

## QUESTIONS TO BE ANSWERED: [KPI'S]

-- Q1 Total revenue

select sum(price * Total_Mobile ) 
as total_revenue 
from mobile;

-- Q2 toatal unique brands 

select count(distinct brands) 
as total_brands
from mobile;

-- Q3 Total unique mobiles

select count(distinct Phone_name) 
as total_mobiles
from mobile;

-- Q4 top 5 high price of brands 

select Brands, max(price) as
 high_price from mobile
 group by 1
 order by 2 desc 
 limit 5;
 
 -- Q5 Average Price per brand 
 ## avg price 
 ## avg price / brand 
 select   round( avg(price),2) as 
 avrage_price 
 from mobile;
 
 select Brands ,
round(  avg(Price),2) as 
 Avrage_price  from mobile
 group by 1;
 
 
 
### QUESTIONS TO ANSWER (mobile sales and specification analysis questions)

-- Q1 Brands by total mobiles and total price by brands
 ## sum of price and count of phones_name
 
select brands ,count(Phone_name)as 
total_mobiles ,sum(Price) 
as total_price from mobile
group by 1;

-- Q2 Operating System Type by count of mobiles
 
 select  Operating_System_Type, 
 count(Brands) as count_of_mobiles
 from mobile
 group by 1;
 
 -- Q3  Percentage of Price by Brands
  
 SELECT  Brands ,
sum(Total_Mobile /price) * 100 
AS percentage
FROM mobile
group by 1;

-- Q4  brands by 5G_Availability 

select brands ,count(5G_Availability) 
as _5G_Availability  from mobile
where 5G_Availability = "yes"  
group by 1;

-- Q5 In the oppo brand how many 5G  mobiles are their. 

select brands , count(5G_Availability) 
as 5G_Available
from mobile 
where Brands = "oppo"
group by 1;

-- Q6   Top 5 high price brands by Country of Origin only the india

select distinct brands , 
max(Price) as Top_5_brans, 
Country_of_Origin from mobile
where Country_of_Origin = "india"
group by 1
order by 2 desc
limit 5;

select* from mobile;

-- Q7 The price of mobile above 100,000 and the Country of Origin is only in india

select distinct brands , price , Phone_name from mobile
where price > 100000  and 
Country_of_Origin ="China";




