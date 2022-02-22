SHOW DATABASES;

CREATE DATABASE HLTWK11Abimbola3;

USE HLTWK11Abimbola3;

CREATE TABLE London_hospital(
hos_id int not null,
hos_name varchar(30) not null,
hos_add char(50) not null,
hos_pcode char(30) not null,
hos_Xcoord decimal(20,3),
hos_Ycoord decimal(20,3),
hos_Mdirector varchar(30) not null,
hos_NoDoctor int not null,
hos_NoNurses int not null,
hos_email text(50) not null,
hos_PhoneNo char(17) not null,
hos_WebAdd varchar(70)not null,
primary key(hos_id),
unique(hos_Xcoord)
);

explain HLTWK11Abimbola2; 
