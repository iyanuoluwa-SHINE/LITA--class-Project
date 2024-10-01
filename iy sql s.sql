create database LITA_DB

CREATE TABLE Employee (
staffid varchar (10) not null,
FirstName varchar (255)i NOT NULL,
SecondName varchar (255),
Gender varchar (10),
Date_of_Birth date,
HireDate datetime,
primary key (staffid)
)
select * from Employee

insert into Employee (staffid, firstname, secondname, gender,Date_of_Birth, hiredate)
values ( 'AB401', 'ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')

-------to drop table --------

drop table employee

----delete sql command--

delete from employee
where staffid  = 'ab281'

-----truncate sql command

truncate table employee



CREATE TABLE PERSON(
personid int identity (1,1) primary key not null,
personname varchar (255) not null,
age int
)
insert into PERSON (personname, age)
values ('saidu', 45), 
('adebanjo', 49), 
('olorunda', 33),
('martha', 88), 
('sandi', 100), 
('jackson', 22), 
('okunla', 19), 
('esther', 45) 

select * from person

------insert more records into employee table---

insert into [dbo].[Employee]
values ( 'AB200', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB405', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB282', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB278', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09'),
( 'AB240', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB299', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB268', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB286', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB270', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09')

select * from [dbo].[Employee]

------ to create second table call salary table-----
CREATE TABLE salary  (
salary_id int identity (1,1)not null,
staffid  varchar (255),
firstname varchar (255),
lastname varchar (255),
departnment nvarchar(255),
salary decimal (10,3)---(10:precision,3:scale)
)

SELECT *From [dbo].[salary]

insert into salary (staffid,firstname ,lastname,departnment ,salary)
values ( 'AB401', 'ayan', 'olakun', 'Information Tech.', 45000.45),
( 'AB212', 'okorie', 'mercy','Account',500000.99999),
( 'AB223', 'joshua', 'chukwuemeka', 'Human Resources',100560.9339999),
( 'AB234', 'sanni', 'ibrahim', 'Sales and Marketing',845688.99),
( 'AB254', 'mercy', 'olanipekun', 'Account',8889.999999),
( 'AB249', 'johnson', 'mercy', 'Information Tech.',234000.90909090),
( 'AB298', 'ayomide', 'halleluyah', 'Logistics', 678000.991999),
( 'AB260', 'deborah', 'justin', 'Logistics',900099.00697969),
( 'AB281', 'wale', 'olanipekun', 'Information Tech',873093.2)

insert into [dbo].[Salary]
values ( 'AB200', 'ayomide', 'halleluyah', 'Human Resources',45699.8585),
( 'AB405', 'deborah', 'justin', 'Account',898349.900222),
( 'AB282', 'wale', 'olanipekun', 'Sales and Marketing',362636.564848),
( 'AB278', 'shukurat', 'lasisi', 'Logistics',100000.464647),
( 'AB240', 'johnson', 'mercy', 'Information Tech',3855590.9890093),
( 'AB299', 'ayomide', 'halleluyah', 'Account', 8585858.9292),
( 'AB268', 'deborah', 'justin', 'Human Resources',76767.93939)

----SUM, COUNT, MAX, MIN, AVERAGE---------------------------------

SELECT SUM(Salary) AS TOTALSALARY FROM Salary

SELECT AVG(Salary) AS AVERAGESALARY FROM Salary

SELECT COUNT(Staffid) AS EmployeeCount FROM EMPLOYEE

SELECT COUNT(Staffid) AS NumberOfEmployee FROM Salary

-----update--------

update Salary
set salary = 7056999.9994
where Staffid = 'AB401'


-----------------------13/09/2024------------------------
--update staff name-----

select * from [dbo].[Employee]

update employee
set secondname = 'Endurance'
where staffid = 'AB405'

----UPDATE DEPARTMENT-------

select * from [dbo].[Salary]
update Salary
set department = 'Information tech'
where staffid='AB240'

SELECT * FROM Salary
WHERE Staffid = 'AB281'
----CREATE ADDITIONAL COLUMN INTO EMPLOYEE TABLE-------

ALTER TABLE EMPLOYEE
ADD State_of_Origin varchar (50)

select * from employee


----CREATE ADDITIONAL COLUMN INTO EMPLOYEE TABLE-------

ALTER TABLE EMPLOYEE
ADD State_of_Origin varchar (50)

select * from employee

UPDATE EMPLOYEE
SET State_of_Origin = 'Ekiti'
where staffid = 'AB268'


----CREATE ADDITIONAL COLUMN INTO EMPLOYEE TABLE-------

ALTER TABLE EMPLOYEE
ADD State_of_Origin varchar (50)

select * from employee

UPDATE EMPLOYEE
SET State_of_Origin = 'Ekiti'
where staffid = 'AB268'

UPDATE EMPLOYEE
SET State_of_Origin = 'abuja'
where staffid = 'AB401'

UPDATE EMPLOYEE
SET State_of_Origin = 'jos'
where staffid = 'AB281'

UPDATE EMPLOYEE
SET State_of_Origin = 'kano'
where staffid = 'AB282'


UPDATE EMPLOYEE
SET State_of_Origin = 'edo'
where staffid = 'AB281'

UPDATE EMPLOYEE
SET State_of_Origin = 'edo'
where staffid = 'AB281'


UPDATE EMPLOYEE
SET State_of_Origin = 'edos'
where staffid = 'AB278'

UPDATE EMPLOYEE
SET State_of_Origin = 'benue'
where staffid = 'AB240'

UPDATE EMPLOYEE
SET State_of_Origin = 'lagos'
where staffid = ''

UPDATE EMPLOYEE
SET State_of_Origin = 'lagos'
where staffid = 'AB299'

UPDATE EMPLOYEE
SET State_of_Origin = 'lagos'
where staffid = 'AB401'


-----create another table call PAYMENT TABLE------
CREATE TABLE Payment (
paymentid int identity (1,1) primary key,
Account_No bigint not null,
staffid int,
Bank varchar (255) default 'Zenith Bank',
Payment_Method varchar (50) check (Payment_Method = 'Cash' or Payment_Method = 'Transfer')
)

alter table payment
alter column staffid varchar (30)

select * from Payment

insert into Payment (account_no,staffid,payment_method )
values (2033030303, 'AB200', 'transfer'),
(2123459910, 'AB401',  'transfer'),
(2034562240, 'AB254',  'cash'),
(2234556303, 'AB212',  'transfer'),
(2033037703, 'AB249',  'cash'),
(2033030303, 'AB298',  'cash'),
(2455657503, 'AB260',  'transfer'),
(2045595953, 'AB281',  'cash'),
(2033030303, 'AB273',  'transfer'),
(2077778903, 'AB299',  'transfer'),
(2033030301, 'AB286', 'transfer'),
(2123459911, 'AB260',  'transfer'),
(2034562241, 'AB270',  'cash'),
(2234556302, 'AB104',  'transfer'),
(2033037705, 'AB268',  'cash'),
(2033030306, 'AB270',  'cash'),
(2455657509, 'AB300',  'transfer')

insert into Payment
values (2198773830, 'AB299',  'GT bank', 'transfer'),
(2024656569, 'AB405',  'Access bank', 'cash'),
(2222444933, 'AB200',  'Fidelity bank', 'transfer'),
(5674842300, 'AB278', 'Access bank', 'transfer'),
(2222444933, 'AB200',  'GT bank', 'transfer'),
(2034537300, 'AB278', 'Access bank', 'transfer')

------those receive their salary by cash-----
SELECT * FROM Payment
WHERE Payment_Method = 'Cash'

select * FROM Payment
where Payment_Method = 'transer'

select
      count(*) as zenithstaff from Payment
	  where Bank= 'zenith bank'

	  select * from Payment
	  where Bank= 'gt bank'
SELECT
	  COUNT(*)  as transer FROM Payment
where Payment_Method = 'Transfer'

SELECT 
     COUNT(*) as cash  FROM Payment
where Payment_Method = 'cASH'

---Analysis on Employee table------

select * from Employee

select 
    count(*) as kano from employee 
where state_of_origin  = 'Kano'



select 
    count(*) as kano from employee 
where state_of_origin  = 'Kano'

select 
     count(*) as male  from employee 
where gender  = 'male'

select * from Salary

select 
      count(*)  from Salary
where department  ='Human Resources'

select top 5 * from Salary

select * from Salary
where salary > 700000

select max(salary) from Salary

select min(salary) as min_salary from Salary


--------------------------------17/09/2024--------------------------------------------------------

select * from employee
 
select * from Salary
 

 --------GROUP BY------------------------------

select count(staffid) as StaffPerSate, state_of_origin from Employee

GROUP BY State_of_Origin
 
select count(staffid), department from Salary

group by department
 
---------HAVING------------------------------

select count(staffid) as StaffPerSate, state_of_origin from Employee

GROUP BY State_of_Origin
having count(staffid) >=3 

select count(staffid) as StaffPerSate, state_of_origin 

from Employee

GROUP BY State_of_Origin

HAVING COUNT(staffid) >=3
 
select count(staffid) as staffperdepart, department 

from Salary

group by department

having count(Staffid) >= 2

-------order by----------------

select count(staffid) as StaffPerSate, state_of_origin 

from Employee

GROUP BY State_of_Origin

order by  count(staffid) desc
 
select count(staffid) as StaffPerSate, state_of_origin 

from Employee

GROUP BY State_of_Origin

order by  count(staffid) asc


-------sort by column index------------
 
select count(staffid) as StaffPerSate, state_of_origin 

from Employee

GROUP BY State_of_Origin

order by  1 desc
 
----Comparison/Relational Operator--------------------
< = less than
> = greater than
<> = not equal
 
select * from Salary

where salary = 100560.934
 
select * from Salary

where salary <> 100560.934
 
select * from Salary

where salary > 100560.934
 
select * from Salary

where salary < 100560.934
 
-------range operators---------------------

Between 

Not Between
 
select * from Salary

where salary between 500000 and 900000
 
select * from Salary

where salary not between 500000 and 900000

---------19/09/2024------
------ LIST OPRTATORS-----
-IN
- NOT IN
 
 select * from [dbo].[eMPLOYEE]
 where firstname in('sanni','deborah','mercy')

 select * from [dbo].[Salary]
 where department in( 'account','logistics','Human Resources') 

 select * from [dbo].[Salary]
 where department ='logistics'


  select * from [dbo].[Salary]
 where department not in( 'account','logistics','Human Resources') 


 --------LOGICAL OPERATORS------

 ----AND
 ----OR

  select * from[dbo].[eMPLOYEE]

  WHERE firstname='justin' and gender ='female'

  select * from[dbo].[eMPLOYEE]

  WHERE firstname='johnson' and gender ='female'

  select * from[dbo].[eMPLOYEE]

  WHERE firstname='johnson'or gender ='female'

  select * from[dbo].[eMPLOYEE]

  WHERE firstname='justin' or gender ='girl'

  
  select * from[dbo].[eMPLOYEE]

  where gender = 'male' and date_of_birth <= '1990-01-01' 
  and state_of_origin='kano'


  select * from[dbo].[eMPLOYEE]

  where gender = 'male' and date_of_birth >= '1990-01-01' 
  and state_of_origin='kano'



  -----update----
  select * from [dbo].[Salary]
  update Salary
  set firstname = 'emeka'
  where Staffid = 'AB212'

  select * from [dbo].[Salary]
  update Salary 
  set Staffid = 'AB250'
  where Staffid = 'AB254'

  -----salary----

  update Salary
  set salary= salary * 0.05
  where Staffid in ('AB200','AB278','AB268')

  -----join----
  inner join
  left join
  right join
  full join

  select * from [dbo].[eMPLOYEE]
  select * from [dbo].[Salary]
 select * from [dbo].[Payment]

 -----join 2 tables---
 --- [dbo].[eMPLOYEE]= 7 columns (staffid,firstname,gender,hiredate ,state_of_origin)
 ----  [dbo].[Salary]= 7 columns(department,salary)

 select eMPLOYEE.staffid,
 eMPLOYEE.firstname, 
 eMPLOYEE.gender,
 eMPLOYEE.hiredate,
 eMPLOYEE.state_of_origin,
 salary.department,
  salary.salary
  from [dbo].[eMPLOYEE]
  join Salary
  on salary.staffid =employee.staffid


  -------inner join----------------

 select employee.staffid, employee.firstname, employee.gender,

employee.hiredate,employee.state_of_origin, Salary.department,

Salary.salary

from employee

join Salary

on salary.Staffid = employee.staffid




  
-------left join---------------------


 select employee.staffid, employee.firstname, employee.gender,

employee.hiredate,employee.state_of_origin, Salary.department,

Salary.salary

from employee

left join Salary

on salary.Staffid = employee.staffid



-------right join---------------

 select employee.staffid, employee.firstname, employee.gender,

employee.hiredate,employee.state_of_origin, Salary.department,

Salary.salary

from employee

right join Salary

on salary.Staffid = employee.staffid

-----full join---------------------


 select employee.staffid, employee.firstname, employee.gender,

employee.hiredate,employee.state_of_origin, Salary.department,

Salary.salary

from employee

full join Salary

on salary.Staffid = employee.staffid

------union vs union all

create table  LITA_Store_Lekki (

customerID INT not null,

firstname varchar (max),

lastname  varchar (max),

Customer_gender nvarchar(max),

age int,

address varchar (max),
transaction_amount decimal (18, 4)
)

select * from[dbo].[LITA_Store_Lekki]

insert into LITA_Store_Lekki(customerID,firstname, lastname, Customer_gender, age, address, transaction_amount)

values ( 100, 'ramesh', 'abdukl', 'male', 24, '8 ahmed road', 2000.00),

   (121,'khilan', 'delhi', 'female',33, '9 delhi stree, okun', 1500.33),

    (111,'malik', 'delhi', 'female',39, '2 agriiv stree, makunn', 1999.33),

(110, 'kara', 'ogun', 'male',40, '10 hahroh road, ottawa', 3400.33),

  (109,'sunkanmi','alade','male', 44, '9 orebiyi street, okun', 37575.00),

  (108,'orobiyi', 'kekerekun', 'male',24, '88 malele road, ijebu', 6500.33),

    (115,'igbati', 'bunmi', 'male',29, '90 delhi street, abeokunta', 1000.69),

(120,'mummry', 'akinbho','female', 25, '9 babaoluwa quarter, ipaha', 9000.50),

  (119,'latana', 'jerremy', 'male',33, '9 ifelofudn quarter, ado', 15090.35),

    (108,'orobiyi', 'kekerekun', 'male',24, '88 malele road, ijebu', 6500.33),

(111,'malik', 'delhi', 'female',39, '2 agriiv stree, makunn', 1999.33)

 

select * from LITA_Store_Lekki

create table  LITA_Store_Marina (

customerID INT not null,

firstname varchar (max),

lastname  varchar (max),

Customer_gender nvarchar(max),

age int,

address varchar (max),

transaction_amount decimal (18, 4)

)


insert into LITA_Store_Marina( customerID,firstname, lastname, Customer_gender, age,address, transaction_amount)

values ( 200,'Femk', 'abdukl',  'male',24, '9 old road', 88000.00),

   (201, 'isaiah', 'john','male', 55, '22 alaly stree, okun', 1590.33),

    ( 206,'emma', 'abu','male', 39, '7 ababa street, makunn', 6788.33),

(210, 'kara', 'ogun','female' ,40, '10 hahroh road, ottawa', 3400.33),

  ( 211,'sunkanmi', 'osagie', 'female' ,49, '9 agric butstop street, okun', 89875.00),

  (209,'oge', 'kunle', 'male',88, '10 iwo street, liverpool', 7860.33),

    (204, 'igbayin', 'elizabeth', 'female',78, '100 kukuma street, epe', 89100.69),

(219,'mummry', 'akinbho','female', 25, '9 babaoluwa quarter, ipaha', 9000.50),

  (220,'latana', 'jerremy','male', 33, '9 ifelofudn quarter, ado', 15090.35),

  (216, 'marvelous', 'jerremy', 'female',96, '9 jo grey quarter, igbo', 53590.35),

  (210, 'kara', 'ogun','female' ,40, '10 hahroh road, ottawa', 3400.33),

  ( 211,'sunkanmi', 'osagie', 'female' ,49, '9 agric butstop street, okun', 89875.00),

  ( 206,'emma', 'abu','male', 39, '7 ababa street, makunn', 6788.33)


-------union all------

select * from LITA_Store_Lekki

union all

select * from LITA_Store_Marina


------union-----------

select  customerID, Customer_gender, transaction_amount

from LITA_Store_Lekki

union 

select customerID, Customer_gender, transaction_amount

from LITA_Store_Marina



select * from LITA_Store_Lekki

create table  LITA_Store_Marina (

customerID INT not null,

firstname varchar (max),

lastname  varchar (max),

Customer_gender nvarchar(max),

age int,

address varchar (max),

transaction_amount decimal (18, 4)

)


insert into LITA_Store_Marina( customerID,firstname, lastname, Customer_gender, age,address, transaction_amount)

values ( 200,'Femk', 'abdukl',  'male',24, '9 old road', 88000.00),

   (201, 'isaiah', 'john','male', 55, '22 alaly stree, okun', 1590.33),

    ( 206,'emma', 'abu','male', 39, '7 ababa street, makunn', 6788.33),

(210, 'kara', 'ogun','female' ,40, '10 hahroh road, ottawa', 3400.33),

  ( 211,'sunkanmi', 'osagie', 'female' ,49, '9 agric butstop street, okun', 89875.00),

  (209,'oge', 'kunle', 'male',88, '10 iwo street, liverpool', 7860.33),

    (204, 'igbayin', 'elizabeth', 'female',78, '100 kukuma street, epe', 89100.69),

(219,'mummry', 'akinbho','female', 25, '9 babaoluwa quarter, ipaha', 9000.50),

  (220,'latana', 'jerremy','male', 33, '9 ifelofudn quarter, ado', 15090.35),

  (216, 'marvelous', 'jerremy', 'female',96, '9 jo grey quarter, igbo', 53590.35),

  (210, 'kara', 'ogun','female' ,40, '10 hahroh road, ottawa', 3400.33),

  ( 211,'sunkanmi', 'osagie', 'female' ,49, '9 agric butstop street, okun', 89875.00),

  ( 206,'emma', 'abu','male', 39, '7 ababa street, makunn', 6788.33)

  select * from LITA_Store_Marina


  -------union all------

select * from LITA_Store_Lekki

union all

select * from LITA_Store_Marina


-----union----

select * from LITA_Store_Lekki

union 

select * from LITA_Store_Marina


------union-----------

select  customerID, Customer_gender, transaction_amount

from LITA_Store_Lekki

union 

select customerID, Customer_gender, transaction_amount

from LITA_Store_Marina



select * from LITA_Store_Lekki

union all

select * from LITA_Store_Marina


select 'Lekki Store' as [BRANCHES], customerID AS [CUSTOMERID],

           firstname as [FIRST NAME], lastname as [LAST NAME], 

  customer_gender as [GENDER],age as AGE, address as [ADDRESS], 

  transaction_amount as [TRANSACTION AMOUNT]

FROM LITA_Store_Lekki

UNION ALL

select 'Marina Store' as [BRANCHES], customerID AS [CUSTOMERID],

           firstname as [FIRST NAME], lastname as [LAST NAME], 

    customer_gender as [GENDER], age as AGE, address as [ADDRESS], 

  transaction_amount as [TRANSACTION AMOUNT]

from LITA_Store_Marina





-------------------------------------------24/09/2024------------------------------


-------------------SQL VIEWS--------------------------------

select * from employee


create view vw_Employee_tbl

as

SELECT STAFFID, firstname, gender, hiredate from employee


select * from vw_Employee_tbl


select * from [dbo].[vw_LITA_Store_Transaction_tbl]


select * from [dbo].[vw_LITA_Store_Transaction_tbl2]


create view vw_LITA_Employee_Info 

as

select employee.staffid,

        employee.firstname, 

employee.secondname,

        employee.gender,

employee.hiredate,

employee.state_of_origin,

Salary.department,

Salary.salary,

Payment.Account_No,

Payment.Bank,

Payment.Payment_Method

from employee

inner join Salary

on salary.Staffid = employee.staffid

inner join Payment

on Payment.staffid = salary.Staffid


select * from [dbo].[vw_LITA_Employee_Info]


-------SQL CASE WHEN-------------------------

SELECT * FROM EMPLOYEE


ALTER TABLE EMPLOYEE

ADD AGE AS DATEDIFF(YEAR, Date_of_Birth, Hiredate) -

   CASE

       WHEN MONTH(Hiredate) < month(Date_of_birth)

  OR (MONTH(Hiredate) = month(Date_of_birth)

  AND DAY(Hiredate) < DAY(Date_of_birth))

THEN 1

ELSE 0

END


-------------

ALTER TABLE EMPLOYEE

ADD AGE AS datediff( year, Date_of_Birth, Hiredate)


 -----------------26/09/2024----------------------------------
select * from employee

--60 and above = SeniorExecutive
---40 -59 = Senior Manager
--30 and 39 = Manager
--less than 30 =  Assistant Manager

select Staffid, firstname, Gender, state_of_origin, Age,
  CASE
       when Age  >= 60 then 'Senior Executive'
	   when Age between 40 and 59 then 'Senior Manager'
	   when Age between 30 and 39 then 'Manager'
	   when Age <= 29 then 'Assistant Manager'
	 Else 'Unknown'
End as AgeGroup
from [dbo].[Employee]

-----Drop state_of_origin column-------------
ALTER TABLE EMPLOYEE
DROP COLUMN STATE_OF_ORIGIN 

SELECT * FROM EMPLOYEE
---create column stateoforigin----------

ALTER TABLE EMPLOYEE
ADD  StateOfOrigin varchar (255)

select * from employee

update Employee
set StateOfOrigin =
  case 
   when Staffid = 'AB200' THEN 'Delta'
   when Staffid = 'AB212' THEN 'Lagos'
   when Staffid = 'AB223' THEN 'Oyo'
   when Staffid = 'AB234' THEN 'Bauchi'
   when Staffid = 'AB240' THEN 'Port Harcourt'
   when Staffid = 'AB249' THEN 'Lagos'
   when Staffid = 'AB254' THEN 'Edo'
   when Staffid = 'AB260' THEN 'Ekiti'
   when Staffid = 'AB268' THEN 'Delta'
   when Staffid = 'AB270' THEN 'Lagos'
   when Staffid = 'AB278' THEN 'Kano'
   when Staffid = 'AB281' THEN 'kano'
   when Staffid = 'AB282' THEN 'Ekiti'
   when Staffid = 'AB286' THEN 'Lagos'
   when Staffid = 'AB298' THEN 'Delta'
   when Staffid = 'AB299' THEN 'Edo'
   when Staffid = 'AB401' THEN 'Oyo'
   when Staffid = 'AB405' THEN 'Delta'
ELSE 'Unknown'
End