create database Pet_Adoption;
use [Pet_Adoption];

create table animals(
id Varchar(50) not null,
name Varchar(30),
breed Varchar(30),
color Varchar(30),
gender char,
status int
);

create table adoptions(
animal_id Varchar(50) not null,
name Varchar(30),
contact Varchar(50),
date date
);

create table shelters(
id int,
name varchar(30),
location Varchar(50)
);


insert into animals 
values('89354034-20d9-4c3d-8195-3294bfd9dbc5', 'Bellyflop', 'Beagle', 'Brown', 'M', 0),
('ae91cf1c-f972-42f3-8160-6c04d935699c', 'Snowy', 'Husky', 'White', 'F', 0),
('37df3388-b0f4-4f0d-b6ef-0d840923a4d8', 'Princess', 'Pomeranian', 'Black', 'F', 0),
('94545432-d27a-4ac8-ab7c-38270d7535f3', 'Cricket', 'Chihuahua', 'Brown', 'M', 0),
('a1e7a7fc-b429-41ec-9924-8bb39dd397c8', 'Princess', 'Poodie', 'Purple', 'F', 0),
('5138ed53-2ab2-400b-973c-91186f8c673d', 'Spot', 'Dalmation', 'Black and white', 'M', 0);

REVOKE SELECT ON student FROM aman;   

select * from animals;

select breed from animals;

select name from animals 
where gender='F';

 
update animals
set color = 'Black' 
where id = '89354034-20d9-4c3d-8195-3294bfd9dbc5';

UPDATE animals 
SET status = 1 
WHERE id = '94545432-d27a-4ac8-ab7c-38270d7535f3';

insert into adoptions
values('a1e7a7fc-b429-41ec-9924-8bb39dd397c8', 'Patalie', 'poodlequeen@cockroachlabs.com', GETDATE()),
('5138ed53-2ab2-400b-973c-91186f8c673d', 'Ella', 'ellacrew@cockroachlabs.com', GETDATE());

select * from adoptions;

select *from adoptions
order by date Desc;

select * from animals
where status = 1;

Alter table animals
add species varchar(30);

update animals
set species='dog';

select * from animals;

insert into animals
values('11d6fa07-449f-4053-a7cb-ae4ec8570f3f', 'Meowmix', 'Munchkin', 'Yellow', 'F',0,'cat'),
('4e55860a-ec39-494b-845a-2e0a6496bf9b','Ash', 'Persian', 'Gray', 'F',0,'cat'),
('e80b92e5-98ed-458d-885d-b9e05d0d123e','Tiger', 'Bengal', 'Brown', 'M',0,'cat');


Alter table animals
add shelters int;

update animals
set shelters=1;



insert into shelters
values(1, 'Animals 4 Homes', 'Red city'),
(2, 'Adopt a Buddy', 'Green Tower'),
(3, 'Fluffy animals', 'Blue Hills');

insert into shelters2
values(1, 'Animals 4 Homes', 'Red city');

create table shelters2(
id int,
name varchar(30),
location Varchar(50)
);

insert into shelters2
values(1, 'Homes', 'high city'),
(2, 'Adopt a animal', 'Yellow Tower'),
(3, 'sloppy animals', 'Maiden Hills');

insert into animals
values('ac1a773d-6912-45cc-b296-1b58d13dbd32', 'Snoops', 'Beagle', 'Brown', 'M', 0, 'dog', 2),
('56e9be70-ed24-4949-bb54-70329c2caf82', 'salt', 'Turkish Angora', 'White', 'F', 0, 'cat', 2),
('b91df9f1-8e3d-4cce-a4ba-9d1a3ad6a12b', 'fuzz', 'Papillion', 'Gray', 'M', 0, 'dog', 3);

select distinct breed from animals;

/* LOGICAL OPERATORS (AND, OR, IN, NOT, LIKE, BETWEEN) */

select * from shelters
where id =1 and location = 'Red City';

select * from shelters
where id =2 or location = 'Blue Hills';

select * from animals
where color in('white', 'Gray', 'black');

select * from adoptions
where name is not null;

select * from animals
where shelters=2 or shelters=3;

select * from animals
where name like 's%';

select * from animals
where shelters between 2 and 4;

/* DISTINCT */

select count(distinct shelters) from animals;

/* EXISTS, ANY, ALL */

select * from animals
where shelters = all(
	select id from shelters 
	where id=1
);

select * from animals
where shelters = any(
	select id from shelters
	where id =2);

select name from animals
where exists(
	select id from shelters
	where location='Blue Hills');

/* GROUP BY, ORDER BY, HAVING */

select species, count(*) from animals
group by species

select * from animals
order by name desc;

select  count(species), shelters from animals
group by shelters
having shelters = 1;

/* SET OPERATIONS IN SQL */

SELECT *FROM shelters UNION SELECT *FROM shelters2;

SELECT *FROM shelters UNION ALL SELECT *FROM shelters2;

SELECT *FROM shelters INTERSECT SELECT *FROM shelters2;

SELECT *FROM shelters MINUS SELECT *FROM shelters2;  