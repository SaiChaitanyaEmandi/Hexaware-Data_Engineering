create database coding_challenge;
use coding_challenge;

create table student(
roll_no int,
name varchar(30),
age int,
address varchar(30),
phone varchar(30)
);

insert into student
values(1, 'harsh',18, 'delhi', '12345'),
(2, 'pratik', 19, 'bihar', '23456'),
(3, 'riyanka', 20, 'siliguri', '34567'),
(4, 'dileep', 18,  'ramnagar', '45678'),
(5, 'satya', 19,  'kolkata', '56789'),
(6, 'dhanraj', 20, 'barabajar', ' 67890'),
(7, 'rohit', 18, 'balurghat', '09876'),
(8, 'niraj', 19,  'alipur', '98765');

create table studentCourse(
courseId int,
roll_no int
);

insert into studentCourse
values(1,1),
(2,2),
(2,3),
(3,4),
(1,5),
(4,9),
(5,10),
(4,11);


/* OVER() AND PARTITION BY */

select roll_no,name, address, 
avg(age) over(partition by age) as average_age
from student;


/* Total Aggrgate Functions */

select age, avg(age) as avg_age from student
group by age
having age > 15;


select roll_no, name, age , count(address) as distinct_address from student
group by roll_no, name, age
having count(address) = 1;


select roll_no, name, max(age) as max_age from student
group by roll_no, name
order by max(age) desc;


select age, sum(age) as ages_sum from student
group by age
order by ages_sum;


select roll_no, name, min(age) as min_age from student
group by roll_no, name
order by min_age;


/* SUBTOTALS*/

create table sales(
month varchar(30),
quarter varchar(10),
year int,
total int
);

insert into sales
values('March', 'Q1', 2019, 60),
('May','Q2',2019,30),
('March','Q1',2020,170),
('November','Q4',2020,120),
('July','Q3',2020,10),
('November','Q4',2019,180),
('July','Q3',2020,10);

select * from sales;

select year, sum(total) as salesTotal from sales
group by rollup(year);

select year, quarter, sum(total) as salesTotal from sales
group by rollup(year, quarter);
