CREATE database Person_Info_356
use [Person_Info_356]

-----1. Find all persons with their department name & code.

	select PersonName,Department.DepartmentName,Department.DepartmentCode 
	from 
	department inner join person 
	on person.departmentid=Department.departmentid

-----2. Give department wise maximum & minimum salary with department name.

	select departmentname,max(salary) as Maxsalary,min(salary) as Minsalary 
	from 
	department inner join person 
	on Person.DepartmentID=Department.departmentid
	group by departmentname


-----3. Find all departments whose total salary is exceeding 100000.

	select departmentname,sum(salary)
	from
	department inner join person
	on Person.DepartmentID=Department.departmentid
	group by departmentname
	having sum(salary)>100000

-----4. Retrieve person name, salary & department name who belongs to Jamnagar city.

	select person.personname,person.salary,Department.departmentname
	from
	person inner join department
	on Person.DepartmentID=Department.departmentid
	where City='jamnagar'

-----5. Find all persons who does not belongs to any department.

	select * 
	from
	person left outer join department
	on Person.DepartmentID=Department.departmentid
	where Department.departmentid is null

-----6. Find department wise person counts.

	select department.departmentname,count(personid) as totalEmp
	from
	person inner join department
	on Person.DepartmentID=Department.departmentid
	group by departmentname 

-----7. Find average salary of person who belongs to Ahmedabad city.

	select AVG(salary) as Avgsalary
	from
	person left outer join department
	on Person.DepartmentID=Department.departmentid
	where city='ahmedabad'

-----8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly.(In single column)

	select person.personname+'  earns  '+cast(person.salary as varchar)+'  from department  '+department.departmentname+'  monthly.'
	from
	person inner join department
	on Person.DepartmentID=Department.departmentid

-----9. List all departments who have no persons.

	select department.departmentname
	from
	person inner join department
	on Person.DepartmentID=Department.departmentid
	group by departmentname
	having count(personid)=0

-----10. Find city & department wise total, average & maximum salaries.

	select 
	person.city,
	department.departmentname,
	sum(salary) as totalsalary,
	max(salary) as maxsalary,
	min(salary) as minsalary
	from
	person left outer join department
	on Person.DepartmentID=Department.departmentid
	group by department.departmentname,person.city

-----11. Display Unique city names.

	select distinct(city) from person

-----12. List out department names in which more than two persons.

	select department.departmentname
	from
	person left outer join department
	on Person.DepartmentID=Department.departmentid
	group by departmentname
	having count(personid)>2


-----13. Combine person name’s first three characters with city name’s last three characters in single column.

	select left(personname,3)+right(city,3) from person

-----14. Give 10% increment in Computer department employee’s salary.

	select salary10percentageplus=salary+(salary*0.1) 
	from
	person inner JOIN department
	on Person.DepartmentID=Department.departmentid
	where Departmentname='Computer' 


-----15. Display all the person name’s who’s joining dates difference with current date is more than 365 days.

	select personname
	from
	person
	where DATEDIFF(day,joiningdate,getdate())>365
