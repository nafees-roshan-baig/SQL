create database MAKE_MY_TRIP;

use MAKE_MY_TRIP;
create table HOTELS(
HOTEL_ID int primary key auto_increment,
HOTEL_NAME varchar(30),
ROOMS_AVAILABLE varchar(30),
AVAILABILITY varchar(20),
REVIEW varchar(10)
);

create table BOOKINGS(
BOOKING_ID int primary key auto_increment,
HOTEL_ID int,
CUSTOMER_ID int,
BOOKING_DATE date,
BOOKING_STATUS varchar(30),
foreign key (HOTEL_ID) references HOTELS(HOTEL_ID)
);

create table FLIGHTS(
FLIGHT_ID int primary key auto_increment,
FLIGHT_NAME varchar(30),
DEPARTURE_TIME time ,
ARRIVAL_TIME time
);

create table PASSENGERS(
PASSENGER_ID int primary key auto_increment,
PASSENGER_NAME varchar(30),
FLIGHT_ID int,
BOOKING_ID int,
foreign key(FLIGHT_ID) references FLIGHTS(FLIGHT_ID),
foreign key(BOOKING_ID) references BOOKINGS(BOOKING_ID)
);

show tables;