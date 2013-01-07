
select Recording_Cheque_Process.BusinessDate
                 , isnull(sum(Recording_Cheque_Process.CheckAmount),0) as InstrumentCollectionReport
                 , (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch        = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem = Recording_Cheque_Process.ProgramSystem 
                       and Recording_Cheque_Process_Sub.ProgramType   = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.BusinessDate  = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckType     <> '000' 
                       and Recording_Cheque_Process_Sub.CheckStatus   = 'P' 
                       and Recording_Cheque_Process_Sub.RecordStatus  = Recording_Cheque_Process.RecordStatus) as Paid_Successful_Instrument_Non_Clearing 
                 , (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch              = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem       = Recording_Cheque_Process.ProgramSystem 
                       and Recording_Cheque_Process_Sub.ProgramType         = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.ExpectedCreditDate  = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckType           = '000' 
                       and Recording_Cheque_Process_Sub.CheckStatus         = 'P' 
                       and Recording_Cheque_Process_Sub.RecordStatus        = Recording_Cheque_Process.RecordStatus) 
                 + (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch              = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem       = Recording_Cheque_Process.ProgramSystem 
                       and Recording_Cheque_Process_Sub.ProgramType         = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.ExpectedCreditDate  = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckType           = '000' 
                       and Recording_Cheque_Process_Sub.CheckStatus         = 'R' 
                       and Recording_Cheque_Process_Sub.ReasonCode         <> '03' 
                       and Recording_Cheque_Process_Sub.ReasonCode         <> '99' 
                       and Recording_Cheque_Process_Sub.RecordStatus        = Recording_Cheque_Process.RecordStatus) 
                 + (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch              = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem       = Recording_Cheque_Process.ProgramSystem 
                       and Recording_Cheque_Process_Sub.ProgramType         = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.ExpectedCreditDate  = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckType           = '000' 
                       and Recording_Cheque_Process_Sub.CheckStatus         = 'R' 
                       and Recording_Cheque_Process_Sub.ReasonCode          = '03' 
                       and Recording_Cheque_Process_Sub.RecordStatus        = Recording_Cheque_Process.RecordStatus) as Credit_Advice_Report_Clearing 
                 , (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch              = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem       = Recording_Cheque_Process.ProgramSystem 
                       and Recording_Cheque_Process_Sub.ProgramType         = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.BusinessDate        = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckType           = '000' 
                       and Recording_Cheque_Process_Sub.CheckStatus         = 'R' 
                       and Recording_Cheque_Process_Sub.ReasonCode         <> '03' 
                       and Recording_Cheque_Process_Sub.ReasonCode         <> '99' 
                       and Recording_Cheque_Process_Sub.RecordStatus        = Recording_Cheque_Process.RecordStatus) as Return_Instrument_Report_Clearing 
                 , (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch        = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem = Recording_Cheque_Process.ProgramSystem 
                       and Recording_Cheque_Process_Sub.ProgramType   = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.BusinessDate  = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckType    <> '000' 
                       and Recording_Cheque_Process_Sub.CheckStatus   = 'R' 
                       and Recording_Cheque_Process_Sub.ReasonCode   <> '03' 
                       and Recording_Cheque_Process_Sub.ReasonCode   <> '99' 
                       and Recording_Cheque_Process_Sub.RecordStatus  = Recording_Cheque_Process.RecordStatus) as Return_Instrument_Report_Non_Clearing 
                 , (select isnull(sum(Recording_Cheque_Process_Sub.CheckAmount),0) 
                      from Recording_Cheque_Process Recording_Cheque_Process_Sub 
                     where Recording_Cheque_Process_Sub.Branch        = Recording_Cheque_Process.Branch 
                       and Recording_Cheque_Process_Sub.ProgramSystem = Recording_Cheque_Process.ProgramSystem 
                      and Recording_Cheque_Process_Sub.ProgramType   = Recording_Cheque_Process.ProgramType 
                       and Recording_Cheque_Process_Sub.BusinessDate  = Recording_Cheque_Process.BusinessDate 
                       and Recording_Cheque_Process_Sub.CheckStatus   = 'R' 
                       and Recording_Cheque_Process_Sub.ReasonCode    = '99' 
                       and Recording_Cheque_Process_Sub.RecordStatus  = Recording_Cheque_Process.RecordStatus) as Cheque_Cancelled 
               from Recording_Cheque_Process Recording_Cheque_Process 
               --where 
               --Recording_Cheque_Process.Branch        = 'HE'
               --and 
              -- Recording_Cheque_Process.ProgramSystem = 'A'
              -- and Recording_Cheque_Process.ProgramType   = 'SE'
              -- and Recording_Cheque_Process.BusinessDate >= '03/05/2012'
               --and Recording_Cheque_Process.BusinessDate <= '03/05/2012'
              -- and Recording_Cheque_Process.CheckStatus   = 'A'
               --and Recording_Cheque_Process.RecordStatus  = 'A'

               group by Recording_Cheque_Process.Branch 
                    , Recording_Cheque_Process.ProgramSystem 
                    , Recording_Cheque_Process.ProgramType 
                    , Recording_Cheque_Process.BusinessDate 
                    , Recording_Cheque_Process.RecordStatus 
             order by Recording_Cheque_Process.BusinessDate


select * from Recording_Cheque_Process order by BusinessDate desc