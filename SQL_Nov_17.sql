use amazon;
show tables;
select * from customers;
select * from products;
truncate customers;

create table orders(
order_id int primary key auto_increment,
customer_id int,
order_date date,
foreign key(customer_id) references customers(customer_id)
);

select * from orders;

insert into orders(order_id,order_date)values
(1,'2024-08-19'),
(2,'2024-11-22'),
(3,'2024-07-15'),
(4,'2024-05-04'),
(5,'2024-02-26');

-- conditional operations in tables 
select * from products where price > 5000;
select * from products where price < 5000;
select * from products where price >= 5000;
select * from products where price <= 5000;
select * from products where price = 5000;
select * from products where price <> 5000;
select * from products where price != 5000;

-- IN - multiple match filtering

select * from products where category in ('electronics','furniture');

# AND : both conditions must be true

select * from products where category = 'electronics' and price > 20000;

# OR : either conditions can be true

select * from products where category = 'electronics' or category = 'furniture';

# NOT : exclude condition 
select * from products where not product_status = 'available';

# BETWEEN - range filtering 
select * from products where price between 5000 and 60000;

-- LIKE with % (starts with)
-- Find names starting with A

select * from products where product_name like 'c%';
select * from products where product_name like '%S';
select * from products where product_name like '%of%';

-- LIKE with

-- like with _(Single character)
-- >Find 5-letter names starting with 'A'

select * from products where product_name like 't_';
select * from products where product_name like '___a';