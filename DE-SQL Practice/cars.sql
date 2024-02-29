create database cars;
use cars;

create table cars(
make varchar(30),
model varchar(30),
type varchar(30),
price int
);

drop table cars;

INSERT INTO  cars
 VALUES ('Ford', 'Mondeo', 'Premium', 25000),
 ('Renault', 'Fuego', 'Sport', 22000),
 ('Citroen', 'Cactus', 'Premium', 35000),
 ('Ford', 'Falcon', 'Low cost', 27000),
 ('Ford', 'Galaxy', 'Standard', 26000),
('Renault', 'Megane', 'Standard', 32000),
 ('Citroen', 'Picasso', 'Premium', 45000);

select * from cars;

SELECT 
  make, model, 
  AVG(price) AS avg_price
FROM cars
WHERE price < 35000
GROUP BY make, model
HAVING AVG(price) > 20000
ORDER BY avg_price DESC
offset 0 rows
fetch next 5 rows only;


select type, avg(price) as avg_price from cars
group by type;

select type, avg(price) as avg_price, max(price) as max_price from cars
group by type;

select type, count(type) as count_of_types, max(price) as max_price_type from cars
group by type;


SELECT  make, model, price,
 AVG(price) OVER (PARTITION BY type) AS average_make
FROM cars;

select type, count(type)  over(partition by type) as type_count 
from cars;

SELECT make, model, price,
  AVG(price) OVER (PARTITION BY make) AS average_make
FROM   cars;


create view myview as
SELECT  make, model, price,
 AVG(price) OVER (PARTITION BY type) AS average_make
FROM cars;

select * from myview;

create view new_view as
select * from cars
where type = 'premium';

select * from new_view;
