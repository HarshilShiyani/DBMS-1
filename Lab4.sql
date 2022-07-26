---1. All tables Insert, Update & Delete
-------------------------------------------------------Insert-----------------------------------------------------------------------

create proc PR_Department_Insert
	@DepartmentID		int,
	@DepartmentName		Varchar(100)
AS
BEGIN
INSERT INTO Department
	(
		DepartmentID,
		DepartmentName
	)
VALUES
	(
		@DepartmentID,
		@DepartmentName
	)
END

EXEC PR_Department_Insert 1,Admins
EXEC PR_Department_Insert 2,IT
EXEC PR_Department_Insert 3,HR
EXEC PR_Department_Insert 4,Account

select * from Department
--------------------------------------------------
create proc PR_Designation_Insert
	@DesignationID		int,
	@DesignationName	Varchar(100)
AS
BEGIN
INSERT INTO Designation
	(
		DesignationID,	
		DesignationName
	)
VALUES
	(
		@DesignationID,
		@DesignationName
	)
END

EXEC PR_Designation_Insert 11,Jobber
EXEC PR_Designation_Insert 12,Welder
EXEC PR_Designation_Insert 13,Clerk
EXEC PR_Designation_Insert 14,Manager
EXEC PR_Designation_Insert 15,CEO

select * from Designation

create proc PR_Person_Insert
	@FirstName		varchar(100),
	@LastName		varchar(100),
	@salary			decimal(8,2),
	@JoiningDate	datetime,
	@DepartmentId	int,
	@DesignationID  	int
as
begin
Insert Into Person
	(
		FirstName,		
		LastName,		
		salary,			
		JoiningDate,	
		DepartmentId,
		DesignationID  
	)
values
	(
		@FirstName,		
		@LastName,		
		@salary,
		@JoiningDate,	
		@DepartmentId,
		@DesignationID  
	)
end

exec PR_Person_Insert 'Rahul','Anshu',56000,'1990-01-01',1,12
exec PR_Person_Insert 'Hardik','Hinsu',18000,'1990-09-25',2,11
exec PR_Person_Insert 'Bhavin','Kamani',25000,'1991-05-14',null,11
exec PR_Person_Insert 'Bhoomi','Patel',39000,'2014-02-20',1,13
exec PR_Person_Insert 'Rohit','Rajgor',17000,'1990-07-23',2,15
exec PR_Person_Insert 'Priya','Maheta',25000,'1990-10-18',2,null
exec PR_Person_Insert 'Neha','Trivedi',18000,'2014-02-20',3,15

select * from person

---------------------------------------Upadte---------------------------------------
alter proc PR_Designation_Update
	@DesignationID		int,
	@DesignationName	Varchar(100)
as 
update Designation
	set
	@DesignationName=DesignationName
	where
	@DesignationID=DesignationID

exec PR_Designation_Update 11,'ceoqwe'
	
select * from Designation
-----------------------------------------
--2. All tables SelectAll (If foreign key is available than do write join and take columns on select list)

create proc PR_Person_selectAll
as
begin
select
		WorkerID,
		fIRSTNAME,
		LastName

