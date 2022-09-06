
begin try
	select 1/0
end try
begin catch
	select 'Error Occur that is:'+error_message() as errormessage
end catch
----------------
begin try
	declare @date_time_value varchar(100)='10/16/2015 21:02:04'
	select CONVERT(datetime,@date_time_value,1010) as conversion
end try
begin catch
	select ERROR_MESSAGE() as erromessage
end catch
-------------------------------
alter proc plogid_takened
	@plogid int,
	@PName varchar(50)
as 
begin
	begin try
		insert into PersonLog 
			values
			(
			@plogid,@PName,'insert',GETDATE()
			)
	end try
	begin catch
		print '“The PLogID is already taken. Try another one'
	end catch
	
end
exec plogid_takened 102,'abc'
select * from PersonLog
-------------------------------
alter proc add_two_number
	@num1 varchar(5),
	@num2 int
AS
begin
	begin try
		select @num1+@num2
	end try
	begin catch
		select
			ERROR_NUMBER() as e_number,
			ERROR_STATE() AS E_STATE,
			ERROR_SEVERITY() AS E_SEVERITY,
			ERROR_message() as error_msg
	end catch
end

EXEC add_two_number '*',12
------------------------
CREATE PROC Findlog
	@plogid int
as 
begin
	if exists(select * from PersonLog where plogid=@plogid)
	print 'available'
	else
		throw 50005,
try
-----------------------------------------------------

declare
		@PlogId		int,
		@PersonName varchar(250)
declare per_cursor cursor
for select
		PLogID,
		PersonName
	from 
		[dbo].[PersonLog]
open per_cursor
fetch next from per_cursor into
	@PlogId,	
	@PersonName
while @@FETCH_STATUS=0
	begin
		print cast(@PlogID as varchar)+' - '+ @PersonName
		fetch next from per_cursor into
			@PlogId,
			@PersonName
			
	end
close		per_cursor
deallocate	per_cursor
---------------------------------------------------------------------
declare
		@Rno		int,
		@Branch		varchar(50)
declare stu_cursor_UPDATE_ENROLLMENT cursor
for select
		Rno,
		Branch
	from 
		Student
open stu_cursor_UPDATE_ENROLLMENT
fetch next from stu_cursor_UPDATE_ENROLLMENT into
	@Rno,	
	@Branch
while @@FETCH_STATUS=0
	begin
		update Student set EnrollmentNo='SOE'+cast(right(YEAR(getdate()),2)as varchar)+@Branch+cast(@Rno as varchar) where Rno=@Rno
		fetch next from stu_cursor_UPDATE_ENROLLMENT into
			@Rno,	
			@Branch
	end
close		stu_cursor_UPDATE_ENROLLMENT
deallocate	stu_cursor_UPDATE_ENROLLMENT
---------------------------------------------------------------------
select * from Student