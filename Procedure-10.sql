--1 select All------------------------------------

	create proc PR_MST_City_SelectAll
	as
	begin
			select cityid,cityname,pincode,cityremarks,MST_city.stateid 
			from 
			MST_City inner join MST_State 
			on
			MST_State.stateid=MST_City.stateid
	end

	exec  PR_MST_City_SelectAll

--2 Insert------------------------------------------

	create proc PR_MST_City_Insert
	@cityid			int,
	@cityname		varchar(50),
	@pincode		varchar(6),
	@stateid		int,
	@cityremarks	varchar(500)
	as
	begin
			Insert into MST_City
			(
				cityid,		
				cityname,	
				pincode	,
				stateid,	
				cityremarks	
			)
			values
			(
				@cityid,		
				@cityname,
				@pincode,	
				@stateid,	
				@cityremarks
			)
	end

	exec  PR_MST_City_Insert 105,Bhuj,370001,1,'Very Excellent'

---3 UPDATE-----------------------------------------------------------
	
	alter proc PR_MST_City_Update

	@cityid			int,
	@cityname		varchar(50)
	as
	begin
			update MST_City
			set 	
			cityname=@cityname
			where
			cityid=@cityid
			
	end

	exec PR_MST_City_Update 105,abcd

---4 Delete-----------------------------------------------------------
	
	create proc PR_MST_City_Delete

	@cityid		int
	as
	begin
			delete from MST_City where cityid=@cityid 
	end

	exec PR_MST_City_Delete 105

-----5 SekectByPK-----------------------------------------------------------
	
	create proc PR_MST_City_SekectByPK
	@cityid		int
	as
	begin
			select * from MST_City where cityid=@cityid 
	end

	exec PR_MST_City_SekectByPK 1

-----6 SelectByPincodeStartWith360-----------------------------------------------------------
	
	alter proc SelectByPincodeStartWith360
	as
	begin
			select * from MST_City where pincode like '360%'
	end

	exec SelectByPincodeStartWith360 

-----7 SelectBycitynamePincode-----------------------------------------------------------
	
	create proc SelectBycitynamePincode
	@cityname		varchar(50),
	@pincode		varchar(6)
	as
	begin
			select * from MST_City where cityname=@cityname and pincode=@pincode
	end

	exec SelectBycitynamePincode Rajkot,360001

--------8 SelectBycityremarks-----------------------------------------------------------
	
	create proc SelectBycityremarks
	@cityremarks		varchar(50)
	as
	begin
			select * from MST_City where cityremarks=@cityremarks
	end

	exec SelectBycityremarks good

----------9 SelectBystateid-----------------------------------------------------------
	
	create proc SelectBystateid
	@stateid	int
	as
	begin
			select * from MST_City where stateid=@stateid
	end

	exec SelectBystateid 1

----------10 SelectBycityidstateid-----------------------------------------------------------
	
	create proc SelectBycityidstateid
	@stateid	int,
	@cityid		int
	as
	begin
			select * from MST_City where stateid=@stateid and cityid=@cityid
	end

	exec SelectBycityidstateid 1,1