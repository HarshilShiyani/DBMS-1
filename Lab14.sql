declare @i int
set @i=1
begin
		while (@i<=10)
		begin
			print @i
			set @i=@i+1
			end
end	
-----------------------------------------------------------------------
declare @i int
set @i=1
begin
			if(@i%2=0)
			begin
				print 'even' 
			end
			else
			begin
				print 'odd' 
			end
end	
----------------------------------------------------------------------
declare @i int
set @i=1
begin
		while(@i<=10)
		begin
			if(@i%2!=0)
			begin
				print @i
			end
			set @i=@i+1
			
		end
end	
-----------------------------------------------------------------------		
declare @i int
declare @sum int
set @i=1
set @sum=0
begin
		while (@i<=50)
		begin
			set @sum=@sum+@i
			set @i=@i+1
		end
		print @sum
end
------------------------------------------------------------------------
declare @i int
declare @sum int
set @i=2
set @sum=0
begin
		while (@i<=20)
		begin	
			set @sum=@sum+@i
			set @i=@i+2
		end
		print @sum
end  
----------------------------------------------

declare @i int
declare @flag int
declare @number int
set @i=2
set @number=93
set @flag=0

begin
		while (@i<=@number/2)
		begin	
				if(@number%@i=0)
				begin
						set @flag=@flag+1
						break
				end
				set @i=@i+1
		end
		if(@flag=0)
		begin

				print 'prime'
		end
		else
		begin
				print 'not prime'
		end
end 
--------------------------------------------------------------
create table odd(number int);
create table even(numberssssss int);
declare @i int
set @i=1
begin
		while (@i<=50)
		begin	
				if(@i%2=0)
				begin
					insert into even values(@i)
				end
				else
				begin
				insert into odd values(@i)
				end
				set @i=@i+1
		end
end  

select * from even
select * from odd
----------------------------------------------