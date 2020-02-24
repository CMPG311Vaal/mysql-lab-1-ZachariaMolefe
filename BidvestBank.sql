#1

CREATE DATABASE Bidvest;

USE Bidvest;

CREATE TABLE BankBranch(
	branch_name VARCHAR(20) NOT NULL,
	branchcity VARCHAR(20) NOT NULL,
	assests double NOT NULL,
	PRIMARY KEY (branch_name)
);

CREATE TABLE Customer(
	customer_name VARCHAR(20) NOT NULL,
	customer_street VARCHAR(20) NOT NULL,
	customer_city VARCHAR(20) NOT NULL,
	PRIMARY KEY (customer_name)
);

CREATE TABLE CustomerAccount(
	account_number CHAR(5) NOT NULL,
	branch_name VARCHAR(20) NOT NULL,
	balance double NOT NULL,
	PRIMARY KEY (account_number)
);

CREATE TABLE Loan(
	loan_number VARCHAR(20) NOT NULL,
	branch_name VARCHAR(20) NOT NULL,
	amount double,
	PRIMARY KEY (loan_number) 
);

CREATE TABLE Depositer(
	customer_name VARCHAR(20) NOT NULL,
	account_number CHAR(5) NOT NULL,
); 

CREATE TABLE Borrower(
	customer_name VARCHAR(20) NOT NULL,
	loan_number VARCHAR(20) NOT NULL,
);

CREATE TABLE Employee(
	employee_name VARCHAR(20) NOT NULL,
	branch_name VARCHAR(20) NOT NULL,
	salary double NOT NULL,
	PRIMARY KEY (employee_name)
);

#2 populating the databases 

insert into CustomerAccount values('A-5324', 'Newtown', 500);
insert into CustomerAccount values('A-5624', 'Sunnyside', 400);
insert into CustomerAccount values('A-7794', 'Midrand' , 900);
insert into CustomerAccount values('A-4467', 'Mabopane', 700);
insert into CustomerAccount values('A-3546', 'Midrand', 750);
insert into CustomerAccount values('A-3453', 'Universitas', 700);
insert into CustomerAccount values('A-2542', 'Mamelodi', 350);

insert into BankBranch values('Midrand', 'Johannesburg', 7100000);
insert into BankBranch values('Newtown', 'Johannesburg', 9000000);
insert into BankBranch values('Mabopane', 'Pretoria', 400000);
insert into BankBranch values('Belgravia', 'Kimberly', 3700000);
insert into BankBranch values('Sunnyside', 'Pretoria', 1700000);
insert into BankBranch values('Amanzimtoti', 'Durban', 300000);
insert into BankBranch values('Universitas', 'Bloemfontein' 2100000);
insert into BankBranch values('Mamelodi', 'Pretoria', 8000000);

insert into Customer values('Modise', 'Spring', 'George');
insert into Customer values('Brooks', 'Senator', 'Johannesburg');
insert into Customer values('Jooste', 'North', 'Kimberly');
insert into Customer values('Lombard', 'Sand Hill', 'Nelspruit');
insert into Customer values('Mokwena', 'Walnut', 'Port-Elizabeth');
insert into Customer values('Johnson', 'Mmabatho', 'Mafikeng');
insert into Customer values('Johnson', 'Alma', 'Bloemfontein');
insert into Customer values('Zwane', 'Main', 'Mafikeng');
insert into Customer values('Lindsay', 'Park', 'George');
insert into Customer values('Smith', 'North', 'Kimberly');
insert into Customer values('Dlamini', 'Putnam', 'Port-Elizabeth');
insert into Customer values('Williams', 'Nassau','Giyane');

insert into Depositer values('Johnson', 'A-5624');
insert into Depositer values('Johnson', 'A-5624');
insert into Depositer values('Johnson', 'A-7794');
insert into Depositer values('Zwane', 'A-3546');
insert into Depositer values('Lindsay', 'A-3453');
insert into Depositer values('Smith',  'A-4467');
insert into Depositer values('Dlamini', 'A-2542');

insert into Loan values('L-11', 'Mamelodi',900);
insert into Loan values('L-14', 'Newtown',1500);
insert into Loan values('L-15', 'Sunnyside',1500);
insert into Loan values('L-16', 'Sunnyside',1300);
insert into Loan values('L-17', 'Newtown',1000);
insert into Loan values('L-23', 'Universitas',2000);
insert into Loan values('L-93', 'Mabopane',500);

insert into Borrower values('Modise','L-16');
insert into Borrower values('Jooste','L-93');
insert into Borrower values('Johnson', 'L-15');
insert into Borrower values('Jackson', 'L-14');
insert into Borrower values('Zwane', 'L-17');
insert into Borrower values('Smith', 'L-11');
insert into Borrower values('Smith', 'L-23');
insert into Borrower values('Williams', 'L-17');

insert into Employee values('Modise', 'Sunnyside',1500);
insert into Employee values('Brown', 'Sunnyside',1300);
insert into Employee values('Gopal', 'Sunnyside' 5300);
insert into Employee values('Johnson', 'Newtown', 1500);
insert into Employee values('Loreena',  'Newtown',1300);
insert into Employee values('Peterson','Newtown',2500);
insert into Employee values('Rao','Austin',1500);
insert into Employee values('Sato','Austin',1600);

#4 quering
#i
select * from CustomerAccount where balance < 700;
select customer_name from Customer where customer_city = 'Johannesburg';
select * from Employee where salary > 1500 AND branch_name != 'Newtown';
select AVG(salary) 'avg_salary' from Employee;

select AVG(salary) 'avg_salary' from Employee;
select employee_name from Employee where branch_name = 'Sunnyside';
select * from Borrower;
select account_number from CustomerAccount where balance > 900;
select account_number AND balance from CustomerAccount where branch_name = 'Newtown' AND balance > 600;
select branch_name, assets from BankBranch;

#5
