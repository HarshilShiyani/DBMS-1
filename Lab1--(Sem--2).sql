use Student_Info_356
select * from Students

--1. Display Name of Student who belongs to either Semester 3 or 5. (Use IN & OR)

	SELECT Name 
	from Students 
	where Sem in(3,5)

--2. Find Student Name & Enrollment No in which Student Id between 103 to 105.

	Select Name,EnrollmentNo 
	from Students 
	where Stuid<105 and Stuid>103

--3. Find Student Name & Enrollment No with their Email Who belongs to 5th Semester.

	Select Name,EnrollmentNo,Email 
	from Students 
	where Sem=5

--4. Display All the Details of first three students.

	select top 3 * 
	from Students

--5. Display Name & Enrollment no of first 30% Students who’s contact number ends with 7.

	Select top 30 percent Name,EnrollmentNo 
	from Students 
	where ContactNo like '%7'

--6. Display Unique Semesters.

	select distinct sem 
	from Students

--7. Retrieve All the Students who have no Enrollment.

	select * 
	from Students
	where EnrollmentNo is null

--8. Find All Students whose Name does not start with ‘V’.

	select * 
	from Students 
	where Name not like 'v%'

--9. Find All Students in which Email Contains ‘3@G’ & Only Six Characters.

	select * 
	from Students 
	where Email like '%3@g%' and Email like '______'

--10. Find Out All the Students whose First Name Starts with F And third character must be R.

	select * 
	from Students 
	where Name like 'f%' and Name like '__r%'

--11. Find All the Student Details whose Contact No contains 877.

	select * 
	from Students 
	where ContactNo like '%877%'

--12. Display Student Name in Which Student belongs to Semester 3 & Contact Number Does Not Contains8 & 9.

	select name 
	from Students 
	where sem=3 
	and 
	ContactNo not like '%8%' 
	and
	ContactNo not like '%9%'

--13. Find Students who born after date 01-01-1990.

	select * 
	from Students 
	where Birthdate >'1990-01-01'

--14. Update Division to BCX-5 & Semester 5 whose Student Id Is 102.

	update Students 
	set Division='BCX-5',Sem=5 
	where stuid=102 
	
--15. Change the Student’s Name to Firoz Sherasiya in which Email is Firoz.Me@Gmail.Com & Contact No is 8885999922.

	update Students 
	set name='Firoz Sherasiya'
	where email='Firoz.me@gmail.com' 
	and 
	ContactNo='8885999922'

--16. Add one more Column City Varchar (50) in Student Table.

	alter table Students 
	add city varchar(50)
	
--17. Remove All BCX-3 Division Students.

	delete from Students 
	where Division='BCX-3'

--18. Change Column Name Email to EmailAddress.

	sp_rename 'Students.Email','Email Address'

--19. Write an SQL query to clone a new table Student_New from Student table with all data.

	select * into Students_new from Students
	
--20. Remove All the Data from Student Table Using Truncate.

	truncate table Students
