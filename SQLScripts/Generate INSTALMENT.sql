declare @conn varchar(7)
declare @conper integer
declare @run integer
declare @newconn varchar(7)

set @run=1

			declare  c1 cursor for 
					select CONRUN,CONPER from HPMCON00
			open c1
			fetch  next from c1 into @conn,@conper
			while @@fetch_status=0 
			begin
				declare @Count integer
				set @Count=0
				WHILE @Count <= @conper
					BEGIN
					
						declare @currdt varchar(10)
						declare @good decimal(18,2)
						declare @vat decimal (18,2)
						
						/*
						if @run<=300 set @good=18500.00
						if @run<=280 set @good=35500.00
						if @run<=260 set @good=30000.00
						if @run<=240 set @good=20000.00
						if @run<=220 set @good=11000.00
						if @run<=200 set @good=15000.00
						if @run<=180 set @good=8500.00
						if @run<=160 set @good=8000.00
						if @run<=140 set @good=25000.00
						if @run<=120 set @good=22000.00
						
						if @run<=100 set @good=19000.00
						if @run<=80 set @good=12000.00
						if @run<=60 set @good=13000.00
						if @run<=40 set @good=9000.00
						if @run<=20 set @good=9900.00
						*/
						
						
						if (@run%10)=0  set @good=18500.00
						if (@run%10)=1  set @good=35500.00
						if (@run%10)=2  set @good=30000.00
						if (@run%10)=3  set @good=20000.00
						if (@run%10)=4  set @good=11000.00
						if (@run%10)=5  set @good=15000.00
						if (@run%10)=6  set @good=8500.00
						if (@run%10)=7  set @good=8000.00
						if (@run%10)=8  set @good=22000.00
						if (@run%10)=9  set @good=19000.00	
						
																		
						
						set @vat = @good*0.07
						set @currdt='2012-01-15'	
						
										
						if @Count>0
						begin
						INSERT INTO [LLSPDTA].[dbo].[HPTINS00]
								   ([INSACT]
								   ,[INSF11]
								   ,[INSF12]
								   ,[INSF21]
								   ,[INSF22]
								   ,[INSF31]
								   ,[INSF32]
								   ,[INSF41]
								   ,[INSF42]
								   ,[INSF51]
								   ,[INSF52]
								   ,[INSILD]
								   ,[INSVLD]
								   ,[INSDLD]
								   ,[INSCLD]
								   ,[INSPLD]
								   ,[INSCBR]
								   ,[INSCPM]
								   ,[INSCPT]
								   ,[INSCRN]
								   ,[INSITM]
								   ,[INSDUE]
								   ,[INSIAM]
								   ,[INSIRA]
								   ,[INSVAM]
								   ,[INSVPA]
								   ,[INSVRA]
								   ,[INSDAM]
								   ,[INSDRM]
								   ,[INSEAM]
								   ,[INSERM]
								   ,[INSPAM]
								   ,[INSPRM]
								   ,[INSVRF]
								   ,[INSVP1]
								   ,[INSVP2]
								   ,[INSETD]
								   ,[INSETM]
								   ,[INSUET]
								   ,[INSMTD]
								   ,[INSMTM]
								   ,[INSUTM]
								   ,[INSPVD]
								   ,[INSIAD]
								   ,[INSVAD]
								   ,[INSPAD]
								   ,[INSPVL]
								   ,[INSPVR]
								   ,[INSPVA]
								   ,[INSF61]
								   ,[INSF62]
								   ,[INSSLD]
								   ,[INSSAM]
								   ,[INSSRM])
							 VALUES
								   ('A'
								   ,'0'
								   ,'0'
								   ,'0'
								   ,'0'
								   ,'3'
								   ,''
								   ,''
								   ,''
								   ,''
								   ,''
								   ,DATEADD(month,@Count-1,@currdt) -- month -1
								   ,DATEADD(month,@Count-1,@currdt) -- month -1
								   ,NULL
								   ,NULL
								   ,NULL
								   ,'01'
								   ,'2'
								   ,'01'
								   ,@conn
								   ,@Count
								   ,DATEADD(month,@Count-1,@currdt)
								   ,@good
								   ,0.00
								   ,@vat
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,''
								   ,''
								   ,''
								   ,{ fn now()}
								   ,NULL
								   ,'EDP'
								   ,NULL
								   ,NULL
								   ,''
								   ,NULL
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,''
								   ,''
								   ,NULL
								   ,0.00
								   ,0.00)					
					end else
					begin
						INSERT INTO [LLSPDTA].[dbo].[HPTINS00]
								   ([INSACT]
								   ,[INSF11]
								   ,[INSF12]
								   ,[INSF21]
								   ,[INSF22]
								   ,[INSF31]
								   ,[INSF32]
								   ,[INSF41]
								   ,[INSF42]
								   ,[INSF51]
								   ,[INSF52]
								   ,[INSILD]
								   ,[INSVLD]
								   ,[INSDLD]
								   ,[INSCLD]
								   ,[INSPLD]
								   ,[INSCBR]
								   ,[INSCPM]
								   ,[INSCPT]
								   ,[INSCRN]
								   ,[INSITM]
								   ,[INSDUE]
								   ,[INSIAM]
								   ,[INSIRA]
								   ,[INSVAM]
								   ,[INSVPA]
								   ,[INSVRA]
								   ,[INSDAM]
								   ,[INSDRM]
								   ,[INSEAM]
								   ,[INSERM]
								   ,[INSPAM]
								   ,[INSPRM]
								   ,[INSVRF]
								   ,[INSVP1]
								   ,[INSVP2]
								   ,[INSETD]
								   ,[INSETM]
								   ,[INSUET]
								   ,[INSMTD]
								   ,[INSMTM]
								   ,[INSUTM]
								   ,[INSPVD]
								   ,[INSIAD]
								   ,[INSVAD]
								   ,[INSPAD]
								   ,[INSPVL]
								   ,[INSPVR]
								   ,[INSPVA]
								   ,[INSF61]
								   ,[INSF62]
								   ,[INSSLD]
								   ,[INSSAM]
								   ,[INSSRM])
							 VALUES
								   ('A'
								   ,'3'
								   ,''
								   ,''
								   ,''
								   ,'3'
								   ,''
								   ,''
								   ,''
								   ,''
								   ,''
								   ,NULL
								   ,NULL
								   ,NULL
								   ,NULL
								   ,NULL
								   ,'01'
								   ,'2'
								   ,'01'
								   ,@conn
								   ,0
								   ,NULL
								   ,4000.00
								   ,0.00
								   ,280.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,''
								   ,''
								   ,''
								   ,{ fn now()}
								   ,NULL
								   ,'EDP'
								   ,NULL
								   ,NULL
								   ,''
								   ,NULL
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,0.00
								   ,''
								   ,''
								   ,NULL
								   ,0.00
								   ,0.00)						
					end
					
					SET @Count = @Count + 1
					END				
			
			
					set @newconn='81'+RIGHT('00000' + CONVERT(VARCHAR(5), @run), 5)
					update HPMCON00 
						set CONRUN=@newconn, 
						CONDTE='2012-01-01'
						
					where CONRUN=@conn
					
					
					set @run=@run+1
				fetch  next from c1 into @conn,@conper
			end

			close c1
			deallocate c1