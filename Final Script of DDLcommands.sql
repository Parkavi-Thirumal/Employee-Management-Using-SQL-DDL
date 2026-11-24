Create database Employee_db;
Use Employee_db;
Create table Dept_details
(
Dept_id int primary key,
Dept_name varchar(20) Not null unique
);
Select * from Dept_details;
Insert into Dept_details(Dept_id,Dept_name)
Values (201,'Verification'),
(202,'Coding'),
(203,'Billing'),
(204,'Rejection'),
(205,'Quality'),
(206,'AR caller'),
(207,'Payment posting');
Create table Location_details
(
Loc_id int primary key auto_increment,
Location varchar(20) Not null unique
);
Select * from Location_details;
Insert into Location_details (Location) 
Values('Chennai'),('Bangalore'),('Hyderabad'),('Coimbatore'),
('kerala');
Create Table Emp_details( Emp_id Int Primary key,Emp_name Varchar(20) not null, Gender enum('M','F'), Age int check(age>=18), 
Hire_date date Default(Current_date),
Designation varchar(100),
Dept_id int,foreign key(dept_id) references Dept_details(Dept_id),
Loc_id int,Foreign key(Loc_id) References location_details(Loc_id),
Salary decimal(10,2));
Insert into Emp_Details(Emp_ID,Emp_name,Gender,Age,Hire_date,Designation,Dept_id,Loc_id,Salary)
Values (1001,'Arun','M',20,'2025-06-06','Client Partner',201,1,25000),
(1002,'Manju','F',25,'2026-03-25','Sr client Partner',203,2,35000),
(1003,'John','M',22,'2025-05-18','Quality Analayst',205,3,45000),
(1004,'janu','F',26,'2024-07-06','Team Lead',202,5,65000),
(1005,'Bhuvanesh','M',26,'2025-06-26','Team Lead',207,4,65500),
(1006,'Kavi','F',28,'2024-09-16','Quality Consultant',204,2,55000),
(1007,'Sundar','M',32,'2025-07-06','Ass.TeamLead',206,3,67000);
Select* from Emp_details;
Alter table Emp_details add email_ID varchar(50);
Update Emp_Details set email_id='Arun1001@gmail.com' where Emp_ID=1001;
Update Emp_Details set email_id='Manju1002@gmail.com' where Emp_ID=1002;
Update Emp_Details set email_id='John1003@gmail.com' where Emp_ID=1003;
Update Emp_Details set email_id='janu1004@gmail.com' where Emp_ID=1004;
Update Emp_Details set email_id='Bhuvanesh1005@gmail.com' where Emp_ID=1005;
Update Emp_Details set email_id='Kavi1006@gmail.com' where Emp_ID=1006;
Update Emp_Details set email_id='Sundar1007@gmail.com' where Emp_ID=1007;
Alter table Emp_details modify Designation varchar(50);
Alter table Emp_details drop Age;
Select* from Emp_details;
Alter Table Emp_details rename column Hire_date to Date_of_joining;
Rename table Dept_details to Departments_info;
Rename Table Location_details to Locations;
Select* from Departments_info;
Select* from Locations;
Truncate Emp_details;
Select* from Emp_details;
Drop table Emp_details;
Select* from Emp_details;
Drop database employee_db;
use Employee_db;
