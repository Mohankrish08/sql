-- using the udemy database
use udemy;

-- creating a new table
create table Day_2 (
ID int,
Name varchar(50),
Age int,
Email varchar(100),
City varchar(50),
Country varchar(50));

-- inserting values
INSERT INTO Day_2 (ID, Name, Age, Email, City, Country)
VALUES
    (1, 'John Doe', 25, 'john@example.com', 'New York', 'USA'),
    (2, 'Jane Smith', 30, 'jane@example.com', 'Los Angeles', 'USA'),
    (3, 'Alice Johnson', 28, 'alice@example.com', 'London', 'UK'),
    (4, 'Bob Brown', 35, 'bob@example.com', 'Paris', 'France'),
    (5, 'Eva Williams', 22, 'eva@example.com', 'Berlin', 'Germany'),
    (6, 'Michael Davis', 40, 'michael@example.com', 'Sydney', 'Australia'),
    (7, 'Sophia Wilson', 27, 'sophia@example.com', 'Toronto', 'Canada'),
    (8, 'William Garcia', 33, 'william@example.com', 'Madrid', 'Spain'),
    (9, 'Olivia Martinez', 29, 'olivia@example.com', 'Rome', 'Italy'),
    (10, 'Liam Rodriguez', 31, 'liam@example.com', 'Tokyo', 'Japan');
    
-- where class
select * from Day_2 where city = 'New York';

-- count the country using where class
select count(Country) from Day_2 where Country='USA';

-- count occurances of the table without using country USA
select count(*) from Day_2 where Country != 'USA';

-- AND / OR conditions
select * from Day_2 where Country = 'USA' and City = 'New York';
select count(Name) from Day_2 where Country !='USA' and Age < 30;

-- Between 
select * from Day_2 where Age between 20 and 30 and Age != 22;

-- in
select * from Day_2 where Age in (22, 27, 25);

-- like
select * from Day_2 where Name like 'J%' and City not like 'L%';
select * from Day_2 where Email like '%%h%';

-- Aliases
select ID, Name, Age, Email, City AS veedu, Country from Day_2;

    
    


