USE LLSPDTA
declare @conn varchar(7)
declare @run integer
declare @newconn varchar(7)
declare @conper integer
declare @concus integer
declare @condea varchar(4)



set @run=1

			declare  c1 cursor for 
					select CONRUN from HPMCON00 order by cast(CONRUN as integer)
			open c1
			fetch  next from c1 into @conn
			while @@fetch_status=0 
			begin
			
					if (@run%10)=0  set @conper=48
					if (@run%10)=1  set @conper=36
					if (@run%10)=2  set @conper=24
					if (@run%10)=3  set @conper=48
					if (@run%10)=4  set @conper=36
					if (@run%10)=5  set @conper=24
					if (@run%10)=6  set @conper=48
					if (@run%10)=7  set @conper=36
					if (@run%10)=8  set @conper=24
					if (@run%10)=9  set @conper=48
			
					
					if @run<=300  
						begin 
							set  @concus=10
							set @condea='D10'
						end
					if @run<=270  
						begin
							set @concus=9
							set @condea='D09'
						end
																	
						
					if @run<=240 begin set @concus=8 set @condea='D08' end
					if @run<=210 begin set @concus=7 set @condea='D07' end
					if @run<=180 begin set @concus=6 set @condea='D06' end
					if @run<=150 begin set @concus=5 set @condea='D05' end
					if @run<=120 begin set @concus=4 set @condea='D04' end
					if @run<=90  begin set @concus=3 set @condea='D03' end
					if @run<=60  begin set @concus=2 set @condea='D02' end
					if @run<=30  begin set @concus=1 set @condea='D01' end
					
					update HPMCON00 
						set CONCUS=@concus,CONDEA=@condea,	
						CONDTE='2012-01-01',CONPER=@conper					
					where CONRUN=@conn
					set @run=@run+1
				fetch  next from c1 into @conn
			end

			close c1
			deallocate c1

