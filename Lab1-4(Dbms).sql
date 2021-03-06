create database Harshil_21010101181
create table DEPOSIT
(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUN DECIMAL(8,2),
	ADATE DATETIME
)
SELECT * FROM DEPOSIT  

create table CUSTOMERS
(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)
create table BORROW
(
	LOANNO INT,	
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)

)

INSERT INTO DEPOSIT VALUES(101,'ANIL','VRCE',1000,'01-03-1995')
INSERT INTO DEPOSIT VALUES(102,'SUNIL','AJNI',5000,'04-01-1996')
INSERT INTO DEPOSIT VALUES(103,'MEHUL','KAROLBAGH',3500,'1995-11-17')
INSERT INTO DEPOSIT VALUES(104,'MADHURI','CHANDI',1200,'1995-12-17')
INSERT INTO DEPOSIT VALUES(105,'PRAMOD','M.G. ROAD',3000,'1996-03-27')
INSERT INTO DEPOSIT VALUES(106,'SANDIP','ANDHERI',2000,'1996-03-31')
INSERT INTO DEPOSIT VALUES(107,'SHIVANI','VIRAR',1000,'05-09-1995')
INSERT INTO DEPOSIT VALUES(108,'KRANTI','NEHRU PLACE',5000,'02-07-1995')
INSERT INTO DEPOSIT VALUES(109,'MINU','POWAI',7000,'10-08-1995')

SELECT * FROM BRANCH  

INSERT INTO BRANCH VALUES('VRCE','NAGPUR')
INSERT INTO BRANCH VALUES('AJNI','NAGPUR')
INSERT INTO BRANCH VALUES('KAROLBAGH','DELHI')
INSERT INTO BRANCH VALUES('CHANDI','DELHI')
INSERT INTO BRANCH VALUES('DHARAMPETH','NAGPUR')
INSERT INTO BRANCH VALUES('M.G.ROAD','BANGLORE')
INSERT INTO BRANCH VALUES('ANDHERI','BOMBAY')
INSERT INTO BRANCH VALUES('VIRAR','BOMBAY')
INSERT INTO BRANCH VALUES('NEHRU PLACE','DELHI')
INSERT INTO BRANCH VALUES('POWAI','BOMBAY')

SELECT * FROM CUSTOMERS
INSERT INTO CUSTOMERS VALUES('ANIL','CALCUTTA')
INSERT INTO CUSTOMERS VALUES('SUNIL','DELHI')
INSERT INTO CUSTOMERS VALUES('MEHUL','BARODA')
INSERT INTO CUSTOMERS VALUES('MANDAR','PATNA')
INSERT INTO CUSTOMERS VALUES('MADHURI','NAGPUR')
INSERT INTO CUSTOMERS VALUES('PRAMOD','NAGPUR')
INSERT INTO CUSTOMERS VALUES('SANDIP','SURAT')
INSERT INTO CUSTOMERS VALUES('SHIVANI','BOMBAY')
INSERT INTO CUSTOMERS VALUES('KRANTI','BOMBAY')
INSERT INTO CUSTOMERS VALUES('NAREN','BOMBAY')


 
INSERT INTO BORROW VALUES(201,'ANIL','VRCE',1000)
INSERT INTO BORROW VALUES(206,'MEHUK','AJNI',5000)
INSERT INTO BORROW VALUES(311,'SUNIL','DHARAMPETH',3000)
INSERT INTO BORROW VALUES(321,'MADHURI','VRCE',1000)
INSERT INTO BORROW VALUES(375,'PRAMOD','VIRAR',8000)
INSERT INTO BORROW VALUES(481,'KRANTI','NEHRU PLACE',3000)

1 SELECT *FROM BORROW
2 SELECT * FROM DEPOSIT 
3 SELECT * FROM CUSTOMERS
4 SELECT ACTNO,CNAME,AMOUN FROM DEPOSIT
5 SELECT LOANNO,AMOUNT FROM BORROW
6 SELECT * FROM BORROW WHERE BNAME='ANDHERI'
7 SELECT ACTNO,AMOUN FROM BORROW WHERE ACTNO=106
8 SELECT CNAME FROM BORROW WHERE AMOUNT>5000
9 SELECT * FROM DEPOSIT WHERE ADATE>='1896-12-01'
10 SELECT CNAME FROM DEPOSIT WHERE ACTNO<105
11 SELECT CNAME FROM CUSTOMERS WHERE CITY IN('NAGPUR','DELHI')
12 SELECT CNAME,BNAME FROM DEPOSIT WHERE AMOUN>4000 AND ACTNO<105
13 SELECT BNAME FROM BORROW WHERE AMOUNT>=3000 AND AMOUNT<=8000
14 SELECT CNAME FROM DEPOSIT WHERE BNAME!='ANDHERI'
15 SELECT BNAME FROM BORROW WHERE AMOUNT=NULL
16 SELECT ACTNO,CNAME,AMOUN FROM DEPOSIT WHERE BNAME IN('AJNI','KAROLBAGH','M.G.ROAD') AND ACTNO<104
17 SELECT TOP 5 * FROM DEPOSIT 
18 SELECT TOP 3 * FROM DEPOSIT WHERE AMOUN>1000
19 SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME!='ANDHERI'
20 SELECT  DISTINCT CITY FROM CUSTOMERS
21 SELECT  DISTINCT BNAME FROM BRANCH
22 SELECT * FROM  CUSTOMERS ORDER BY CITY ASC
23 SELECT * FROM  DEPOSIT ORDER BY AMOUN DESC
24 SELECT * FROM  CUSTOMERS ORDER BY CITY DESC
25 SELECT  DISTINCT CNAME AS UNI_BORROWER FROM  BORROW 


UPDATE 


1 UPDATE DEPOSIT SET AMOUN=5000 WHERE AMOUN=3000
2 UPDATE BORROW SET BNAME='C.G.ROAD'WHERE BNAME='VRCE'
3 UPDATE DEPOSIT SET AMOUN=5000,ACTNO=111 WHERE CNAME='SANDIP'
4 UPDATE BORROW SET AMOUNT=AMOUNT + AMOUNT*0.1
5 UPDATE DEPOSIT SET AMOUN=5000 WHERE ACTNO<107 AND ACTNO>103
6 UPDATE BORROW SET AMOUNT=NULL
7 UPDATE BORROW SET LOANNO=401 WHERE LOANNO=201
       UPDATE BORROW SET BNAME='AJNI' WHERE BNAME='C.G.ROAD'
8 UPDATE CUSTOMERS SET CNAME='ANIL JAIN' WHERE CNAME='ANIL'
9 UPDATE DEPOSIT SET BNAME='VRCE',CNAME='RAMESH',AMOUN=5500 WHERE ACTNO=102
10 UPDATE BORROW SET AMOUNT=NULL WHERE LOANNO=481

 UPDATE BORROW SET AMOUNT=200

 1 DELETE FROM CUSTOMERS WHERE CITY='BOMBAY'
 2 DELETE FROM DEPOSIT WHERE ACTNO<1000
 3 DELETE FROM BORROW WHERE BNAME='AJNI'
 4 DELETE FROM BORROW WHERE LOANNO<510 AND LOANNO>201
 5 DELETE FROM DEPOSIT WHERE ADATE>'1991-12-01'
 6 TRUNCATE TABLE CUSTOMERS
 7 DELETE FROM DEPOSIT WHERE CNAME='ANIL' AND ACTNO=101
 8 DELETE FROM DEPOSIT WHERE BNAME='ANDHERI'
 9 DELETE FROM BORROW WHERE AMOUNT<2000 AND BNAME!='VRCE'
 10 DROP TABLE BRANCH




 create table Student
(
	Enrollment_No VARCHAR(20),
	Name VARCHAR(25),
	CPI DECIMAL(5,2),
	Birthedate DATETIME
)

SELECT *FROM Student


 1 ALTER TABLE Student ADD City VARCHAR(20) NULL,BACKLOG INT NOT NULL
 2 ALTER TABLE Student ALTER column Name VARCHAR(35)
 3 ALTER TABLE Student ALTER column CPI INT
 4 Sp_Rename 'Student.Enrollment_No','ENO','COLUMN'
 5  ALTER TABLE Student DROP COLUMN CITY
 6 Sp_Rename 'Student','Student_MASTER'
 7 ALTER TABLE Student DROP COLUMN BACKLOG
 8  ALTER TABLE Student ALTER column Name VARCHAR(35) NOT NULL 
 9 Sp_Rename 'Student_MASTER.Birthedate','BDATE','COLUMN'
 10 ALTER TABLE Student ALTER column ENO VARCHAR(12)

     
	 create table Students123
(
	StuID int,
	FirstNmae VARCHAR(25),
	LastName VARCHAR(25),
	Website VARCHAR(50),
	City VARCHAR(25),
	Division VARCHAR(20)
)

SELECT *FROM Students123

INSERT INTO Students123 VALUES(1011,'Keyur','Patel','techonthenet.com','Rajkot','II-BCX')
INSERT INTO Students123 VALUES(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','I-BCY')
INSERT INTO Students123 VALUES(1033,'Kajal','Trivedi','bigactivities.com','Baroga','IV-DCX')
INSERT INTO Students123 VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','III-DCW')
INSERT INTO Students123 VALUES(1055,'Harmit','Mitel','','Rajkot','II-BCY')
INSERT INTO Students123 VALUES(1066,'Ashok','Jani','','Baroda','II-BCZ')

select FirstNmae,LastName from Students123 where FirstNmae like 'k%'
2 select FirstNmae,LastName from Students123 where FirstNmae like '_____'
3 select FirstNmae,LastName from Students123 where city like '%a' and city like '______'
4 select * from Students123 where LastName like '%'
5 select * from Students123 where FirstNmae like 'ha%' and FirstNmae like '%t'
6 select * from Students123 where FirstNmae like 'k%' and FirstNmae like '__y%'
7 select * from Students123 where  FirstNmae like '_____' and Website is null 
8 select * from Students123 where LastName like '%jer%'
9 select * from Students123 where city like'r%' or city like'b%'
10 select * from Students123 where Website is  not null 
11 select * from Students123 where FirstNmae like '[a-h]%'
12 select * from Students123 where FirstNmae like '_[a,e,i,o,u]%'
13 select FirstNmae  from Students123 where city like '%rod%'
14 select FirstNmae,LastName from Students123 where website like 'bi%'
15 select city from Students123 where LastName like '______'
16 select * from Students123 where city like '_____' and city not like 'ba%'
17 select * from Students123 where division like 'II%'
18 select FirstNmae from Students123 where division like '%bc%'
19  select stuid,city from Students123 where division like '______' and website is not null
20 select * from Students123 where FirstNmae not like  '__[a,e,i,o,u]%'
 
 lAB-6

1. select 5*30
2. select abs(-25),abs(25),abs(-50),abs(50)
3. select ceiling(25.2),ceiling(25.7),ceiling(-25.2)
4. select floor(25.2),floor(25.7),floor(-25.2)
5. select 5%2,5%3
6. select power(3,2),power(4,3)
7. select sqrt(25),sqrt(30),sqrt(50)
8. select square(5),square(15),square(25)
9. select pi()
10. select round(157.732,2),round(157.732,0),round(157.732,-2)
11. select exp(2),exp(3) 
12. select log10(5),log10(100)  
13. select sin(3.1415),cos(3.1415),tan(3.1415)
14. select sign(-25),sign(0),sign(25)
15. select rand()



STRING Function

1. select len(null),len('  hello  '),len('blank')
2. select lower('HARSHIL'),upper('harshil')
3. select SUBSTRING('HARSHIL',1,3)
4. select SUBSTRING('123456789012345',3,8)
5. select REPLACE('ABC123EFG','123','XYZ'),REPLACE('ABCABCABC','C','5')
6. select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')
7. select char(97),char(65),char(122),char(90),char(48),char(57)
8. select ltrim('      hello world')
9. select rtrim('hello world     ')
10.select left('SQL SERVER',4),right('SQL SERVER',5)
11.select cast('1234.56' as float)
12.select convert(int,10.58)
13.select space(10)+'Harshil'
14.select 'Harshil'+'shiyani'
     select concat('harshil','Shiyani')
15.select reverse('Darshan')
16.select replicate('Harshil',3)
17.select stuff('SQL Tutorial',1,3,'HTML')
18.select COALESCE(NULL,NULL,NULL,NULL,NULL,'HARSHIL')
19.select isnumeric('123456i')
20.select CHARINDEX('t','Customer')


7.1 [Date Function]:-
   
   1.select getdate() as Today_Date
   2.select getdate()+365
   3.select convert(varchar,getdate())
   4.select convert(varchar,getdate(),106)
   5.select convert(varchar,getdate(),7)
   6.select datediff(month,'2008-12-31','2009-03-31')
   7.select datediff(year,'2010-09-10 ','2012-01-25')
   8.select datediff(hour,'2012-01-26 07:00','2012-01-26 10:30')
   9.select day('2016-03-12'), month('2016-03-12'),year('2016-03-12')
   10.select dateadd(year,5,getdate())
   11.select dateadd(month,-2,getdate())
   12.select datename(month,getdate())
       select datepart(month,getdate())
   13.select eomonth(getdate())
   14.select  getdate()+30
   15.select datediff(month,'2003-10-23',getdate())
       select datediff(year,'2003-10-23',getdate())


create table Student_Marks
(
	sid int not null,
	SName VARCHAR(50),
	Marks int not null
)
INSERT INTO Student_Marks VALUES(1,'John',90)
INSERT INTO Student_Marks VALUES(2,'Martin',80)
INSERT INTO Student_Marks VALUES(3,'Carol',89)
INSERT INTO Student_Marks VALUES(4,'Jack',99)
INSERT INTO Student_Marks VALUES(5,'Rose',88)
INSERT INTO Student_Marks VALUES(6,'Mary',90)
select * from Student_Marks

1. select count(*) from Student_Marks
2. select sum(Marks) from Student_Marks
3. select avg(Marks) from Student_Marks
4. select min(Marks) from Student_Marks
5. select max(Marks) from Student_Marks


Lab:-8

create table Employee
(
	EID int not null,
	EName VARCHAR(50) not NULL,
	Department varchar(50) not null,
	salary Decimal(8,2) not null,
	JoiningDate datetime not null ,
	city varchar(50) not null
)

select * from Employee

1. select max(salary) as Maximum,min(salary) as Minumum,sum(salary) as Total_sal,avg(salary) as Average_sal from Employee
2. select count(*) from Employee
3. select max(salary) salary from Employee where Department='it'
4. select distinct count(city) from Employee


