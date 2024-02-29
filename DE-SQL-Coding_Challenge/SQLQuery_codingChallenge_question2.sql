create database coding_challenge_Q2;
use coding_challenge_Q2;

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


/* JOINS */

select name, age, address from student
inner join studentCourse on student.roll_no = studentCourse.roll_no;

select name, age, phone, studentCourse.courseId from student
left join  studentCourse on student.roll_no = studentCourse.roll_no;

select name, age, phone, studentCourse.courseId from student
right join  studentCourse on student.roll_no = studentCourse.roll_no;

select * from student
full join  studentCourse on student.roll_no = studentCourse.roll_no;

/*Equi join */

select student.roll_no, student.name, student.address, student.age, studentCourse.courseId 
from student, studentCourse
where student.roll_no = studentCourse.roll_no;

/*Non-Equi join */

select student.roll_no, student.name, student.address, student.age, studentCourse.courseId
from student, studentCourse
where student.roll_no > studentCourse.roll_no;