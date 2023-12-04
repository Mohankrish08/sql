-- use database
use udemy;

-- creating the table
create table Day_3(
Name varchar(50),
Age int,
EmployeeID int,
Salary decimal(10,2),
LeaveDays int,
WorkingDays int);

-- inserting the values
INSERT INTO Day_3 (Name, Age, EmployeeID, Salary, LeaveDays, WorkingDays) VALUES
('John Doe', 30, 1001, 60000.00, 20, 240),
('Jane Smith', 28, 1002, 65000.00, 18, 230),
('Michael Johnson', 35, 1003, 70000.00, 22, 235),
('Emily Williams', 26, 1004, 55000.00, 15, 220),
('David Brown', 32, 1005, 75000.00, 25, 245),
('Sarah Davis', 29, 1006, 62000.00, 19, 225),
('Robert Miller', 31, 1007, 68000.00, 21, 235),
('Jennifer Wilson', 27, 1008, 60000.00, 17, 230),
('Daniel Anderson', 33, 1009, 72000.00, 23, 240),
('Linda Thomas', 30, 1010, 58000.00, 16, 220),
('Christopher Martinez', 34, 1011, 69000.00, 20, 235),
('Amanda Garcia', 28, 1012, 63000.00, 18, 225),
('James Rodriguez', 32, 1013, 77000.00, 24, 245),
('Megan Hernandez', 25, 1014, 56000.00, 14, 215),
('William Lee', 29, 1015, 61000.00, 19, 225),
('Olivia Nguyen', 31, 1016, 70000.00, 21, 235),
('Matthew Kim', 33, 1017, 74000.00, 22, 240),
('Sophia King', 27, 1018, 59000.00, 16, 220),
('Ethan Patel', 30, 1019, 67000.00, 20, 235),
('Grace Rivera', 26, 1020, 58000.00, 17, 225);

-- show the table
select * from Day_3;

-- aggregation
select max(Salary), sum(Salary), count(LeaveDays) from Day_3;

-- group by
select EmployeeID, sum(Salary) from Day_3 group by EmployeeID order by EmployeeID DESC;

-- having
select EmployeeID, count(LeaveDays), sum(salary) from Day_3 group by EmployeeID having sum(Salary) > 70000;