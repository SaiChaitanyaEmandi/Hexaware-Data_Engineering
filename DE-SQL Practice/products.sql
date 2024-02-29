create database practice;
use practice;

create table products(
productId int,
productName Varchar(20),
supplierId int,
categoryId int
);

insert into products
values(1, 'Laptop', 1, 1),
  (2, 'Smartphone', 1, 1),
  (3, 'Desk Chair', 1, 2),
  (4, 'Coffee Maker', 2, 2),
  (5, 'LED TV', 2, 2),
  (6, 'Wireless Mouse', 3, 2),
  (7, 'Bookshelf', 3, 7),
  (8, 'Digital Camera', 3, 2),
  (9, 'Toaster Oven', 4, 6);

create table orderDetails(
orderDetailId int,
orderId int,
productId int
);

insert into orderDetails
values(1, 10248, 11),
  (2, 10248, 42),
  (3, 10248, 72),
  (4, 10249, 14),
  (5, 10249, 51),
  (6, 10250, 41),
  (7, 10250, 51),
  (8, 10250, 65),
  (9, 10251, 22),
  (10, 10251, 57);

  Alter table orderDetails
  add Quantity int;

  update orderDetails
  set Quantity= 10
  where orderId = 10248;

  update orderDetails
  set Quantity= 15
  where orderId = 10249;

  update orderDetails
  set Quantity= 20
  where orderId = 10250;

  update orderDetails
  set Quantity= 4
  where orderId = 10251;

select * from products
select * from orderDetails


SELECT *
FROM products
WHERE productId = ANY
  (SELECT orderDetailId
  FROM orderDetails
  WHERE Quantity = 15);

 select * from products
 where productId = ALL(
 select orderDetailId from orderDetails
 where Quantity = 15);

 select productName, categoryId, orderDetails.orderId from products
 join orderDetails on products.productId = orderDetails.productId;

 select * from sys.tables;