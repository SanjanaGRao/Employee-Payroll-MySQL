#UC1 - Ability to create a payroll service database
create database payroll_service;
show databases;
use payroll_service;

#UC2 - Ability to create a employee payroll table in the payroll service database to manage employee payrolls
create table employee_payroll
(
id  INT unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
empName VARCHAR(150) NOT NULL,
salary Double NOT NULL,
startDate DATE NOT NULL
);
describe employee_payroll;

#UC3 - Ability to create employee payroll data in the payroll service database
INSERT INTO employee_payroll(empName,salary,startDate) VALUES
("Bill",100000.00,"2018-01-03"),
("Teresa",200000.00,"2019-11-03"),
("Charlie",300000.00,"2020-11-21");

#UC4 - Ability to retrieve all the employee payroll data that is added to payroll service database
SELECT * FROM employee_payroll;

#UC5 - Ability to retrieve salary data for a particular employee as well as all employees who have
#joined in a particular data range from the payroll service database
select salary from employee_payroll where empName ="Bill";
select * from employee_payroll
where startDate between cast('2018-01-03' as date) and date(now());
select * from employee_payroll where startDate between cast('2018-01-03' as date) and date(now());
select * from employee_payroll where startDate between cast('2019-01-03' as date) and date(now());

#UC6 - Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender
alter table employee_payroll add gender char(1) after empName;
describe employee_payroll;
update employee_payroll set gender = "F" where id = 2;
select * from employee_payroll;
update employee_payroll set gender="M" where id=3 or id=1;
select * from employee_payroll;

#UC7 - Ability to find sum, average, min, max and number of male and female employees
select AVG(salary) from employee_payroll where gender="M" group by gender;
select gender,AVG(salary) from employee_payroll group by gender;
select gender,COUNT(empName) from employee_payroll group by gender;
select gender,SUM(salary) from employee_payroll group by gender;

#UC8 - Ability to extend employee_payroll data to store employee information like employee phone, address
# and department 
alter table employee_payroll add(employeePhone varchar(12), 
address varchar(150), 
department varchar(25));
describe employee_payroll;

#UC9 - Ability to extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay
alter table employee_payroll add(basicPay double NOT NULL, 
deductions double NOT NULL, 
taxablePay double NOT NULL,
incomeTax double NOT NULL,
netPay double NOT NULL);
describe employee_payroll;

#UC10 - Ability to make Teresa part of sales and Marketing dept
UPDATE employee_payroll SET employeePhone = "9876543210", 
address ="Mumbai",
department = "Sales and Marketing",
basicPay = 2000,
deductions = 2000,
taxablePay = 1000,
incomeTax = 200,
netPay = 10000 
where id=2; 
select * from employee_payroll where empName = "Teresa";

#UC11 - create new Table called Employee Department having Employee Id and Department ID
create table employee_departments
(
id int unsigned,
department_id int unsigned primary key auto_increment,
foreign key(id) references employee_payroll(id)
);
insert into employee_departments (id) values (2);
select * from employee_departments;