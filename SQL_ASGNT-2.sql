create database OLA_CABS;
show databases;
use ola_cabs;

create table drivers(
DRIVER_ID  INT PRIMARY KEY AUTO_INCREMENT,
DRIVER_NAME VARCHAR(30),
AVAILABILITY  VARCHAR(20),
NO_OF_RIDES INT,
RATING DECIMAL(3,1)
);

select * from drivers;

create TABLE CUSTOMERS(
CUSTOMER_ID INT PRIMARY KEY AUTO_INCREMENT,
CUSTOMER_NAME VARCHAR(30),
PHONE_NUMBER VARCHAR(15)
);

create TABLE RIDES(
RIDE_ID INT PRIMARY KEY AUTO_INCREMENT,
DRIVER_ID INT,
CUSTOMER_ID INT,
STATUS VARCHAR(20),
foreign key(DRIVER_ID) references drivers(driver_id),
foreign key(CUSTOMER_ID) references CUSTOMERS(CUSTOMER_ID)
);

drop table rides;

show tables;

insert into drivers(driver_name,availability,no_of_rides,rating) values
('Arun', 'Available', 120, 4.8),
('Bala', 'Unavailable', 95, 4.5),
('Karthik', 'Available', 150, 4.9),
('Vijay', 'Available', 80, 4.2),
('Ramesh', 'Unavailable', 110, 4.6);

INSERT INTO CUSTOMERS
(CUSTOMER_NAME, PHONE_NUMBER)
VALUES
('Rahul', '9876543210'),
('Priya', '9876543211'),
('Suresh', '9876543212'),
('Divya', '9876543213'),
('Manoj', '9876543214');

INSERT INTO RIDES
(DRIVER_ID, CUSTOMER_ID, STATUS)
VALUES
(1, 1, 'Completed'),
(2, 2, 'Cancelled'),
(3, 3, 'Completed'),
(4, 4, 'Pending'),
(5, 5, 'Completed');

select * from drivers;
select * from customers;
select * from rides;

select driver_name , rating from drivers;
select CUSTOMER_NAME,PHONE_NUMBER from CUSTOMERS;

select driver_name from  drivers where availability = 'available';
select * from rides where status = 'completed';
select driver_name from drivers where rating > 4.5;
SELECT * FROM DRIVERS WHERE NO_OF_RIDES BETWEEN 10 AND 50;
SELECT * FROM RIDES WHERE STATUS IN ('Completed', 'Cancelled');

SELECT * FROM DRIVERS
WHERE (RATING > 4.5 AND AVAILABILITY = 'Available')OR NOT (NO_OF_RIDES < 50);

SELECT * FROM DRIVERS;
update drivers set availability = 'Unavailable ' where driver_id = 1;

update customers set phone_number = '9998887770' where customer_id = 1;
DELETE FROM RIDES WHERE RIDE_ID = 5;

alter table drivers add city varchar(20);

alter table drivers modify no_of_rides decimal(6,2);
select * from drivers;
alter table drivers rename column city to location;

rename table drivers to drivers_detail;
show tables;
select * from drivers_detail order by rating desc;

select * from drivers_detail limit 3 offset 2;