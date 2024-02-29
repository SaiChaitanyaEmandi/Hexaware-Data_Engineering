create database joins;
use joins;

create table student(
roll_no int,
name varchar(30),
address varchar(40),
phone varchar(10),
age int
);

create table studentCourse(
courseId int,
roll_no int
);

insert into student
values(1, 'harsh', 'delhi', '12345', 18),
(2, 'pratik', 'bihar', '23456', 19),
(3, 'riyanka', 'siliguri', '34567', 20),
(4, 'dileep', 'ramnagar', '45678', 18),
(5, 'satya', 'kolkata', '56789', 19),
(6, 'dhanraj', 'barabajar', ' 67890', 20),
(7, 'rohit', 'balurghat', '09876', 18),
(8, 'niraj', 'alipur', '98765', 19);

insert into studentCourse
values(1,1),
(2,2),
(2,3),
(3,4),
(1,5),
(4,9),
(5,10),
(4,11);

select name, age from student
inner join studentCourse on student.roll_no = studentCourse.roll_no;

select name, age, studentCourse.courseId from student
left join studentCourse on student.roll_no = studentCourse.roll_no;

select name, age, studentCourse.courseId from student
right join studentCourse on student.roll_no = studentCourse.roll_no;

select * from student
full join studentCourse on student.roll_no = studentCourse.roll_no;

select * from student
natural join studentCourse;

/*Equi join */
select student.roll_no, student.name, student.address, student.age, studentCourse.courseId from student, studentCourse
where student.roll_no = studentCourse.roll_no;

/*NON- Equi join */
select * from student, studentCourse
where studentCourse.courseId != student.roll_no

/* AGGREGATE FUNCTIONS*/

select count(*) from student;

select age,sum(age) from student
group by age;

select top 1 name, max(age) from student
group by name;

select min(age) from student;

select avg(age) from student
where age>18;

/* SUBQUERIES */

select name, address, age from student
where roll_no in (
select roll_no from studentCourse
where courseId = 3);

select name, address, phone, age from student
where roll_no in (
select roll_no from studentCourse
where courseId > 1);


/* String function */

select ascii(name) from student;

select len(name) from student;

select concat(name, ':', address) from  student;

select left(name, 2) from student;

select upper(address) from student;

select char(99);

select replace(name, 'n', 's') from student
where roll_no =8;

select reverse(address) from student;

select substring(name, 1,3) from student;


/* Mathematical functions */

select abs(-245) as positiveNumber;

select age,avg(age) from student
group by age;

select CEILING(45.678) as ceilValue;

select count(*) as totalStudents from student;

select floor(12.456) as floorValue;

select max(age) as maxAge from student;

select min(age) as minAge from student;

select pi();

select power(age, 2) as power from student;

select round(99.5278, 2) as roundedValue;

select sign(245.45) 
select sign(-34)

select sqrt(100) as sqrtValue;

select age, sum(age) from student
group by age;

select rand();


/* Date functions */

select GETDATE();

select month(getdate());

select year(getdate());

select day(getdate());

select datename(day, getdate());

select datename(month, getdate());

select datename(year, getdate());

select datepart(month, getdate());

select EOMONTH(getdate());

select datediff( month, '2023-10-11', '2024-01-19');



