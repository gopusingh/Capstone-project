create database Shoes;
use Shoes;

create table Table_1(
id int,
Name varchar(999),
gender varchar(10),
Number_of_colour int,
selling_price int,
colors_count int,
colour1 varchar(20),
colour2 varchar(20),
colour3 varchar(20),
colour4 varchar(20)
);

select Name,selling_price from Table_1 WHERE gender = 'men';
select sum(Number_of_colour) from Table_1 GROUP BY gender;
select sum(colors_count) from Table_1 GROUP BY gender;
select max(selling_price) from Table_1;
select min(selling_price) from Table_1 WHERE gender = 'women' and colour1 LIKE '%Black%'; 
select Name,selling_price from Table_1 WHERE gender = 'men';


use Shoes;
create table Table_2(
id int,
size_count int,
colour1 varchar(20),
colour2 varchar(20),
colour3 varchar(20),
colour4 varchar(20),
Product_Code varchar(20),
colors_count int,
Number_of_colour int
);
select size_count from Table_2 GROUP BY Product_Code;
select colour1,colour2,colour3,colour4 from Table_2 GROUP BY Product_Code;
select Product_Code from Table_2 WHERE colors_count>1;
select size_count from Table_2 GROUP BY colour1 , colour2 , colour3 AND colour4;
select Product_Code from Table_2 WHERE colour1 LIKE '%Black%';


use Shoes;
create table Table_3(
id int,
Reviews varchar(999),
all_sizes int,
quality int,
Rating int
);
select * from Table_3  WHERE quality='best' OR 'great';
select avg(Rating) from Table_3 GROUP BY Reviews;
select * from Table_3 WHERE Rating>4;
select count(Reviews) from Table_3;
select * from Table_3 WHERE quality = 'good';
select avg(Rating) from Table_3 GROUP BY all_sizes;


select t1.Name,t3.all_sizes from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id WHERE t3.Rating = 5;
select t3.avg(Rating) from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id GROUP BY t1.gender;
select * from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id WHERE t3.quality>2;
select * from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id WHERE t3.Rating>(select avg(Rating) from Table_3);

select * from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id WHERE t3.Rating>(select avg(Rating) from Table_3);
select * from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id WHERE t3.Rating = 5 GROUP BY t1.gender;

select * from Table_1 AS t1 INNER JOIN Table_3 AS t3 ON t1.id = t3.id WHERE t1.Rating=(select max(Rating) from Table_1)  GROUP BY t1.gender;

# in each category i think it means gender