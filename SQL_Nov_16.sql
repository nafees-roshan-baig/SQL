CREATE DATABASE NEWDB;
create database if not exists newdb;
drop database newdb;
drop database if exists newdb;

create database amazon;
show databases;
use amazon; 
show tables;
create table products(
product_id int primary key auto_increment,
product_name varchar(20),
category varchar(25),
price int,
product_status varchar(30)
);

desc products; 
select * from products;
select product_name from products;
select price,product_name from products;

insert into products(product_name,category,price,product_status)values
("SOFA","FURNITURE",6000, "AVAILABLE"),
("TV","ELECTRONICS",74000,"NOT AVAILABLE"),
("MIXER GRINDER", "ELECTRONICS", 15000, "AVAILABLE"),
("CHAIRS","FURNITURE", 3500, "NOT AVAILABLE"),
("LAPTOP","ELECTRONICS",50000, "AVAILABLE");

select * from products;

truncate products;

CREATE TABLE CUSTOMERS(
CUSTOMER_ID INT PRIMARY KEY AUTO_INCREMENT,
CUSTOMER_NAME VARCHAR(35),
EMAIL_ID VARCHAR(30),
PHONE_NUMBER VARCHAR(15));

show tables;
select * from customers;

insert into customers(customer_name,email_id,phone_number)values
('JEEVA','jeeva66@gmail.com', '990876457'),
('APARNA','appupakku@gmail.com', '840667625'),
('ZIYA','ziya7@gmail.com', '987654321'),
('VIDHU','vvidh@gmail.com', '823456789'),
('POORNIMA','pappu56@gmail.com', '778901235');
