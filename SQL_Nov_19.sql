use amazon;
select * from customers;

update customers set address = 'abcd' where customer_id = 1;
update customers set address = 'abc';

# RENAME TABLE -- > Change the name of an existing table
show tables;
rename table products to product_details;
alter table product_details rename to products;
select * from product_details;
select * from products;

-- RENAME COLUMN -- > Rename an existing column in a table

alter table products rename column product_name to item_name;
desc products;

-- MODIFY DATATYPE -- > Change a column's data type or size

alter table products modify price decimal(10,2);

-- DELETE
delete from orders where order_id = 1;

select * from orders;


-- LIMIT --
SELECT * FROM ORDERS LIMIT 2;

-- OFFSET
SELECT * FROM CUSTOMERS LIMIT 2 OFFSET 3;

-- ORDERBY
SELECT * FROM PRODUCTS ORDER BY item_name asc;
SELECT * FROM PRODUCTS ORDER BY item_name desc;
select * from products;
