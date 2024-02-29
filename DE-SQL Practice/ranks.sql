create database ranks;
use ranks;

create table grades(
roll_no int,
name varchar(40),
grade char,
);

insert into grades
values(101, 'Ravi', 'A'),
(102, 'Teja', 'B'),
(103, 'Raju', 'B'),
(104, 'Sai', 'C'),
(105, 'Kiran', 'C'),
(106, 'Ajay', 'A'),
(107, 'Deva', 'C');
insert into grades
values(109, 'hari', null);

delete from grades
where roll_no = 107;

select distinct grade from grades;

select roll_no, name, coalesce(grade, 'D') from grades

select roll_no, name, grade,
case
	when grade = 'A' then 'Greater than 80'
	when grade = 'B' then 'Greater than 70'
	when grade = 'C' then 'Greater than 60'
	else 'Greater than 50'
end as gradeMarks
from grades;

update grades
set grade = 'B'
where roll_no = 107;

select name, grade, ROW_NUMBER() over(order by grade desc) rowNumber from grades;

select roll_no, name, grade, rank() over(order by grade) rank_no from grades;

select name, grade, dense_rank() over(order by grade ) denseRank from grades;

select roll_no, name, grade, ntile(3) over(order by grade) n_tile from grades;

create procedure 
display 
as
select * from grades
go;

exec display;

