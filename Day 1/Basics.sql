-- For using the udemy database
use udemy;

-- creating the table for the database
create table Sample (
ID int,
Name varchar(50),
Age int,
Email varchar(100),
Address varchar(250));

-- insert the values
insert into sample (Id, Name, Age, Email, Address) values
(1, 'Alice', 25, 'alice@example.com', '123 Main St'),
(2, 'Bob', 30, 'bob@example.com', '456 Elm St'),
(3, 'Charlie', 28, 'charlie@example.com', '789 Oak St'),
(4, 'Diana', 35, 'diana@example.com', '321 Maple St'),
(5, 'Eve', 22, 'eve@example.com', '654 Pine St'),
(6, 'Frank', 27, 'frank@example.com', '987 Cedar St'),
(7, 'Grace', 29, 'grace@example.com', '741 Birch St'),
(8, 'Henry', 31, 'henry@example.com', '852 Walnut St'),
(9, 'Ivy', 26, 'ivy@example.com', '369 Spruce St'),
(10, 'Jack', 24, 'jack@example.com', '159 Oakwood St'),
(11, 'Eve', 29, 'eve@example.com', '256 Finland St');

-- select command
select * from sample;

-- selecting the Name and Email
select Name, Email from sample;

-- order by 
select * from sample order by Address;

-- desc order for Name
select * from sample order by Name desc;

-- Select distinct
select distinct name from sample;

-- Limit
select Name, Age from sample limit 2;

-- Functions
-- Count
select count(Name) from sample;

-- count the distinct names
select distinct count(Name) from sample;