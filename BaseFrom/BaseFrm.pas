unit BaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Menus, ImgList, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, JvExExtCtrls, JvExtComponent, JvPanel,
  Provider, DB, ADODB, UIT_GLOBAL_LIB, SConnect, SockCon, DBClient, MConnect,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics, cxLookAndFeels,
   frxClass, frxDBSet,ZLibEx, frxBarcode, frxDBXComponents,
  frxADOComponents, frxIBXComponents, frxBDEComponents, frxChart, frxDCtrl,
  frxExportHTML, frxExportCSV, frxExportPDF, frxExportXLS;

type


  TFrxVariables= class
    private
      // The data fields of this new class
      FName   : String;
      FValue  : String;

    public
      // Properties to read these data values
      property Name : String read FName;
      property Value : String read FValue;

      // Constructor
      constructor Create(const Name   : String;
                         const Value : String);
  end;

 TRParams = record
      Name : string;
      Value : string;
    end;

 TReportParam = Class
      public
        RParams : array of TRParams;

      constructor Create;
      procedure AddParam(Name: string; Value: string);

    End;

  TfrmBase = class(TForm)
    MASTERPANE: TPanel;
    pnHeader: TJvPanel;
    ToolBar: TToolBar;
    btnEdit: TToolButton;
    pnHeaderRight: TJvPanel;
    ADODataSet: TADODataSet;
    dsp: TDataSetProvider;
    pnContainer: TPanel;
    OpenDialog1: TOpenDialog;
    btnClose: TToolButton;
    btnNew: TToolButton;
    btnSave: TToolButton;
    btnCancel: TToolButton;
    btnDelete: TToolButton;
    btnSearch: TToolButton;
    btnPrint: TToolButton;
    btnExport: TToolButton;
    il1: TImageList;
    DCOM: TDCOMConnection;
    SockCon: TSockCon;
    btnLogin: TcxButton;
    cxLabel7: TcxLabel;
    edtUser: TcxTextEdit;
    cxLabel8: TcxLabel;
    edtPassword: TcxTextEdit;
    frxReport: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    cdsReport1: TClientDataSet;
    cdsReport2: TClientDataSet;
    cdsReport3: TClientDataSet;
    cdsReport4: TClientDataSet;
    cdsReport5: TClientDataSet;
    cdsRepTemp: TClientDataSet;
    cdsReport: TClientDataSet;
    frxDBDataset: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxDialogControls1: TfrxDialogControls;
    frxChartObject1: TfrxChartObject;
    frxBDEComponents1: TfrxBDEComponents;
    frxIBXComponents1: TfrxIBXComponents;
    frxADOComponents1: TfrxADOComponents;
    frxDBXComponents1: TfrxDBXComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    toolbarimg: TImageList;
    lbMainCurrentDate: TcxLabel;
    Img16x16: TImageList;
    SatinImg24: TImageList;
    SatinImg16: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
  private
    FToolbarEnable: TToolbarBtns;
    FToolbarVisible: TToolbarBtns;
    FShowLogin:boolean;
    FFormClosed: boolean;
    FIsActive: boolean;
    FBranch,FUserID,FPDM,FPDT,FWorkStation:string;
    procedure SetToolbarEnable(const Value: TToolbarBtns);
    procedure SetToolbarVisible(const Value: TToolbarBtns);
    procedure SetShowLogin(const Value:boolean);
  public

    function genReportA(scon:TSockCon;cds:TClientDataSet;sql_fieldname,reportid:string;_params:TReportParam):boolean;
    procedure ShowReport(scon:TsockCon;reportid:string; _params:array of TReportParam);
    procedure ShowReportDataset(scon:Tsockcon;
                                     reportid: string;
                                     _params: array of TReportParam;
                                     CDS1:TDataset = nil;
                                     CDS2:TDataset = nil;
                                     CDS3:TDataset = nil;
                                     CDS4:TDataset = nil;
                                     CDS5:TDataset = nil;
                                     CDS6:TDataset = nil);

    procedure ExportReport(scon:Tsockcon;reportid: string;
  _params: array of TReportParam;PdfFile:string );


    property ToolbarEnable : TToolbarBtns read FToolbarEnable write SetToolbarEnable;
    property ToolbarVisible : TToolbarBtns read FToolbarVisible write SetToolbarVisible;
    property FormClosed : boolean read FFormClosed write FFormClosed;
    property IsActive : boolean read FIsActive write FIsActive;
    property UserID : string read FUserID write FUserID;
    property Branch : string read FBranch write FBranch;
    property PDM : string read FPDM write FPDM;
    property PDT : string read FPDT write FPDT;
    property WorkStation : string read FWorkStation write FWorkStation;
    property ShowLogin : boolean read FShowLogin write SetShowLogin;

  end;

var
  frmBase: TfrmBase;

implementation

uses UIT_UTILS_LIB;

{$R *.dfm}

{ TfrmBase }

function Before(SubStr, s: string): string;
var
    i: integer;
begin
    i := Pos(SubStr, s);
    if i > 0 then
        Before := Copy(s, 1, i - 1)
    else
        Before := '';
end;


function After(InpStr, s: string): string;
var
    i: integer;
begin
    i := Pos(InpStr, s);
    if i <> 0 then
        Result := Copy(s, i + Length(InpStr), Length(S));
end;


{ Compress a stream }
procedure CompressStream(inpStream, outStream: TStream);
var
  InpBuf, OutBuf: Pointer;
  InpBytes, OutBytes: Integer;
begin
  InpBuf := nil;
  OutBuf := nil;
  try
    GetMem(InpBuf, inpStream.Size);
    inpStream.Position := 0;
    InpBytes := inpStream.Read(InpBuf^, inpStream.Size);

    ZCompress(InpBuf, InpBytes, OutBuf, OutBytes);
    outStream.Write(OutBuf^, OutBytes);
  finally
    if InpBuf <> nil then FreeMem(InpBuf);
    if OutBuf <> nil then FreeMem(OutBuf);
  end;
end;


{ Decompress a stream }
procedure DecompressStream(inpStream, outStream: TStream);
var
  InpBuf, OutBuf: Pointer;
  OutBytes, sz: Integer;
begin
  InpBuf := nil;
  OutBuf := nil;
  sz     := inpStream.Size - inpStream.Position;
  if sz > 0 then
    try
      GetMem(InpBuf, sz);
      inpStream.Read(InpBuf^, sz);
      ZDecompress(InpBuf, sz, OutBuf, OutBytes);
      outStream.Write(OutBuf^, OutBytes);
    finally
      if InpBuf <> nil then FreeMem(InpBuf);
      if OutBuf <> nil then FreeMem(OutBuf);
    end;
  outStream.Position := 0;
end;


Procedure SetControls(const Parent: TWinControl;_enable:boolean) ;
 
   procedure FixControls(const Parent: TWinControl) ;
   var
     ctl, L: Integer;
     List: TList;
   begin
     List := TList.Create;
     try
       for ctl := 0 to Parent.ControlCount - 1 do
       begin
         if Parent.Controls[ctl] is TWinControl then
         begin
           if List.Count = 0 then
        L := 0
           else
           begin
             with Parent.Controls[ctl] do
               for L := 0 to List.Count - 1 do
                 if (Top < TControl(List[L]).Top) or ((Top = TControl(List[L]).Top) and (Left < TControl(List[L]).Left)) then Break;
           end;
 
           //List.Insert(L, Parent.Controls[ctl]) ;
           Parent.Controls[ctl].Enabled:=_enable;

           FixControls(TWinControl(Parent.Controls[ctl])) ;
           end;
         end;
 
       for ctl := 0 to List.Count - 1 do
         TWinControl(List[ctl]).TabOrder := ctl;
     finally
       List.Free;
     end;
   end;
 begin
   FixControls(Parent) ;
 end;


Procedure SetChildTaborders(const Parent: TWinControl) ;
 
   procedure FixTabOrder(const Parent: TWinControl) ;
   var
     ctl, L: Integer;
     List: TList;
   begin
     List := TList.Create;
     try
       for ctl := 0 to Parent.ControlCount - 1 do
       begin
         if Parent.Controls[ctl] is TWinControl then
         begin
           if List.Count = 0 then
        L := 0
           else
           begin
             with Parent.Controls[ctl] do
               for L := 0 to List.Count - 1 do
                 if (Top < TControl(List[L]).Top) or ((Top = TControl(List[L]).Top) and (Left < TControl(List[L]).Left)) then Break;
           end;

           List.Insert(L, Parent.Controls[ctl]) ;
           if  Parent.Controls[ctl] is TcxButton then
               TcxButton(Parent.Controls[ctl]).LookAndFeel.Kind:=lfFlat;
               
           FixTabOrder(TWinControl(Parent.Controls[ctl])) ;
           end;
         end;
 
       for ctl := 0 to List.Count - 1 do
         TWinControl(List[ctl]).TabOrder := ctl;
     finally
       List.Free;
     end;
   end;
 begin
   FixTabOrder(Parent) ;
 end;



procedure TfrmBase.btnNewClick(Sender: TObject);
begin
 SetControls(pnContainer,true);
end;

procedure TfrmBase.FormActivate(Sender: TObject);
begin
  IsActive := true;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
   ShowLogin:=false;
   IsActive := false;
   ToolbarEnable := [tbClose];
   ToolbarVisible := [tbClose,tbNew,tbEdit,tbSave,tbCancel,tbDelete,tbSearch,tbPrint,tbExport];
   SetToolbarVisible(ToolbarVisible);
   SetToolbarEnable(ToolbarEnable);
  // SetControls(pnContainer,false);
end;

procedure TfrmBase.FormShow(Sender: TObject);
begin
  IsActive := true;
  SetChildTaborders(pnContainer);
end;

procedure TfrmBase.frxReportGetValue(const VarName: string;
  var Value: Variant);
var
    params:TStringList;
    paramName,paramValue:string;
    icount:integer;
begin

  cdsRepTemp.Close;
  cdsRepTemp.CommandText:='SELECT * FROM  CQDM010  WHERE ID='+IntToStr(frxReport.Tag);
  cdsRepTemp.Open;

  if cdsRepTemp.Active then
    if cdsRepTemp.RecordCount>0 then
    begin
          // generate parameter
          params:=TStringList.Create;
          params.Text:=cdsRepTemp.fieldbyname('PARAMS').AsString;

          for  icount:=0 to params.Count-1 do
          begin
            paramName  := Before('=',params.Strings[icount]);
            paramValue := After('=',params.Strings[icount]);

            if AnsiCompareText(VarName, paramName)=0 then value:=paramValue;
          end;


    end;

end;

function TfrmBase.genReportA(scon:TSockCon;cds: TClientDataSet; sql_fieldname,
  reportid: string; _params: TReportParam): boolean;
var p,pcount:integer;
    paramName,paramValue,sqlstr:string;

    isok,isParam:boolean;

    _cdsTemp:TClientDataSet;
begin

          isok:=true;
          isParam:=false;
          _cdsTemp:=TClientDataSet.Create(self);

          _cdsTemp.Close;
          _cdsTemp.RemoteServer:=scon;
          TSockCon(_cdsTemp.RemoteServer).AddProv('report_prov005', 'ALL');
          _cdsTemp.ProviderName:='report_prov005';
        TSockCon(_cdsTemp.RemoteServer).AddProv('report_prov005', 'ALL');


        _cdsTemp.ProviderName:='report_prov005';

         // _cdsTemp.ProviderName:='cdsRepTemp';
         // _cdsTemp.RemoteServer:=scon;
          _cdsTemp.CommandText:='select * from  CQDM010  where REPORT_ID='''+reportid+'''';
          _cdsTemp.Open;


          sqlstr:=_cdsTemp.fieldbyname(sql_fieldname).AsString;

          if (Trim(sqlstr)<>'') then
          begin
            cds.Close;
            cds.RemoteServer:=scon;
            TSockCon(cds.RemoteServer).AddProv('report_prov006', 'ALL');
            cds.ProviderName:='report_prov006';

        cds.ProviderName:='report_prov006';
            cds.CommandText:=sqlstr;
            if _params<>nil then      // have parameter
            begin
             // if High(_params.RParams)>0 then
              begin
              if (cds.Params.Count>0)  then
                for p:=0 to cds.Params.Count-1 do
                begin
                  //if Trim(paramName)<>'' then
                  cds.Params.Items[p].Value:='';
                    isParam:=false;
                    for pcount:=0 to length(_params.RParams)-1 do
                    begin


                      paramName:= _params.RParams[pcount].Name;//Before('=',params.Strings[pcount]);
                      paramValue:=_params.RParams[pcount].Value;//After('=',params.Strings[pcount]);

                      if pcount<=cds.Params.Count then
                        if cds.Params.Items[p].Value='' then
                          if cds.Params.Items[p].Name=paramName then
                          begin
                             cds.Params.Items[p].Value:=paramValue;
                             isParam:=true;
                          end else
                          begin
                             cds.Params.Items[p].Value:='';
                          end;
                    end;

                  //if Trim(cds.Params.Items[p].Value)='' then
                  if isParam=false then
                  begin
                    //Application.MessageBox(pchar('Parameter '''+cds.Params.Items[p].Name+''' not found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                    MessageDlg('Parameter '''+cds.Params.Items[p].Name+''' not found!!!',mtWarning, [mbOK], 0);
                    isok:=false;
                  end;
                end;
              end;{ else
              begin
                // no parameter found
                Application.MessageBox(pchar('No Parameter  found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                isok:=false;
              end;  }
              if isok then
                cds.open;
            end else
              begin
                // no parameter found
                Application.MessageBox(pchar('No Parameter  found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
                isok:=false;
              end;
          end;


          _cdsTemp.Free;
          _params.Free;
          Result:=isok;
end;

procedure TfrmBase.SetShowLogin(const Value: boolean);
begin
 cxLabel7.Visible:=value;
 edtUser.Visible:=value;
 cxLabel8.Visible:=value;
 edtPassword.Visible:=value;
 btnLogin.Visible:=value;
end;

procedure TfrmBase.SetToolbarEnable(const Value: TToolbarBtns);
begin

  btnClose.Enabled := (tbClose in Value);
  btnNew.Enabled := (tbNew in Value);
  btnEdit.Enabled := (tbEdit in Value);

  btnSave.Enabled := (tbSave in Value);
  btnCancel.Enabled := (tbCancel in Value);
  btnDelete.Enabled := (tbDelete in Value);

  btnSearch.Enabled := (tbSearch in Value);
  btnPrint.Enabled := (tbPrint in Value);
  btnExport.Enabled := (tbExport in Value);

  FToolbarEnable := Value;
end;

procedure TfrmBase.SetToolbarVisible(const Value: TToolbarBtns);
begin

  btnClose.Visible := (tbClose in Value);
  btnNew.Visible := (tbNew in Value);
  btnEdit.Visible := (tbEdit in Value);

  btnSave.Visible := (tbSave in Value);
  btnCancel.Visible := (tbCancel in Value);
  btnDelete.Visible := (tbDelete in Value);

  btnSearch.Visible := (tbSearch in Value);
  btnPrint.Visible := (tbPrint in Value);
  btnExport.Visible := (tbExport in Value);

  FToolbarVisible := Value;
end;

procedure TfrmBase.ExportReport(scon:Tsockcon;reportid: string;
  _params: array of TReportParam;PdfFile:string );
var
  I,reportTag: Integer;
 // dsName:TStringList;
  rStream,rptStream:Tstream;
  showreport:boolean;


begin
  showreport:=true;


  rptStream:=TMemoryStream.Create;
  rStream:=TMemoryStream.Create;
  cdsRepTemp.Close;

  cdsRepTemp.RemoteServer:=scon;

  TSockCon(cdsRepTemp.RemoteServer).AddProv('report_prov004', 'ALL');


  cdsRepTemp.ProviderName:='report_prov004';
  cdsRepTemp.CommandText:='select * from  CQDM010  where REPORT_ID='''+reportid+'''';



  cdsRepTemp.Open;

  if cdsRepTemp.Active then
    if cdsRepTemp.RecordCount>0 then
    begin

       rStream:=cdsRepTemp.CreateBlobStream(cdsRepTemp.FieldByName('REPORT_CONTEXT'), bmRead);
       reportTag:=cdsRepTemp.fieldByName('ID').AsInteger;

       if (rStream.Size>0) then
       begin
         DecompressStream(rStream,rptStream);
         frxReport.LoadFromStream(rptStream);

                  {
                  for i := low(obj) to High(obj) do
                      for k := low(obj[i].RParams) to High(obj[i].RParams) do
                          ShowMessage(obj[i].RParams[k].Name+'='+obj[i].RParams[k].Value);
                  }

                  if trim(cdsRepTemp.fieldbyname('STRSQL').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport,'STRSQL',reportid,_params[0]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL1').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport1,'STRSQL1',reportid,_params[1]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL2').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport2,'STRSQL2',reportid,_params[2]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL3').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport3,'STRSQL3',reportid,_params[3]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL4').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport4,'STRSQL4',reportid,_params[4]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL5').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport5,'STRSQL5',reportid,_params[5]);


                  DecompressStream(rStream,rptStream);
                  frxReport.LoadFromStream(rptStream);
                  frxReport.Tag:= reportTag;

                  if showreport then
                    begin
                       frxPDFExport1 .ShowDialog :=False ;
                       frxPDFExport1.FileName :=PdfFile; //'C:\Starteam\HondaLeasing\Source Code\v1.4\BIN\tmp\RecvCQ1.pdf' ;//ExtractFilePath( Application.ExeName)+'tmp\
                       //frxReport.ShowReport();
                       frxReport .PrepareReport() ;
                       frxReport .Export(frxPDFExport1) ;
                    end;


                     end;
    end;
end;



procedure TfrmBase.ShowReportDataset(scon:Tsockcon;
                                     reportid: string;
                                     _params: array of TReportParam;
                                     CDS1:TDataset = nil;
                                     CDS2:TDataset = nil;
                                     CDS3:TDataset = nil;
                                     CDS4:TDataset = nil;
                                     CDS5:TDataset = nil;
                                     CDS6:TDataset = nil);
var
  I,reportTag: Integer;
 // dsName:TStringList;
  rStream,rptStream:Tstream;
  showreport:boolean;
 
  rpVariable:TReportParam;
 
begin
  showreport:=true;
 
 
  rptStream:=TMemoryStream.Create;
  rStream:=TMemoryStream.Create;
  cdsRepTemp.Close;
 
  cdsRepTemp.RemoteServer:=scon;
 
  TSockCon(cdsRepTemp.RemoteServer).AddProv('report_prov004', 'ALL');
 
 
  cdsRepTemp.ProviderName:='report_prov004';
  cdsRepTemp.CommandText:='select * from  CQDM010  where REPORT_ID='''+reportid+'''';
 
 
 
  cdsRepTemp.Open;
 
  if cdsRepTemp.Active then
    if cdsRepTemp.RecordCount>0 then
    begin
 
       rStream:=cdsRepTemp.CreateBlobStream(cdsRepTemp.FieldByName('REPORT_CONTEXT'), bmRead);
       reportTag:=cdsRepTemp.fieldByName('ID').AsInteger;
 
       if (rStream.Size>0) then
       begin
         DecompressStream(rStream,rptStream);
         frxReport.LoadFromStream(rptStream);
 
              if CDS1 = nil then
                begin
                  cdsReport.Close;
                  cdsReport.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL').AsString)<>'' then
                    showreport:=genReportA(scon,cdsReport,'STRSQL',reportid,_params[0]);
                end
              else
                begin
                  frxDBDataset.DataSet := CDS1;
                end;
 
              if CDS2 = nil then
                begin
                  cdsReport1.close;
                  cdsReport1.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL1').AsString)<>'' then
                    showreport:=genReportA(scon,cdsReport1,'STRSQL1',reportid,_params[1]);
                end
              else
                begin
                  frxDBDataset1.DataSet := CDS2;
                end;
 
              if CDS3 = nil then
                begin
                  cdsReport2.close;
                  cdsReport2.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL2').AsString)<>'' then
                    showreport:=genReportA(scon,cdsReport2,'STRSQL2',reportid,_params[2]);
                end
              else
                begin
                  frxDBDataset2.DataSet := CDS3;
                end;
 
              if CDS4 = nil then
                begin
                  cdsReport3.close;
                  cdsReport3.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL3').AsString)<>'' then
                    showreport:=genReportA(scon,cdsReport3,'STRSQL3',reportid,_params[3]);
                end
              else
                begin
                  frxDBDataset3.DataSet := CDS4;
                end;
 
              if CDS5 = nil then
                begin
                  cdsReport4.close;
                  cdsReport4.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL4').AsString)<>'' then
                    showreport:=genReportA(scon,cdsReport4,'STRSQL4',reportid,_params[4]);
                end
              else
                begin
                  frxDBDataset4.DataSet := CDS5;
                end;
 
              if CDS6 = nil then
                begin
                  cdsReport5.close;
                  cdsReport5.RemoteServer:=SockCon;
                  if trim(cdsRepTemp.fieldbyname('STRSQL5').AsString)<>'' then
                    showreport:=genReportA(scon,cdsReport5,'STRSQL5',reportid,_params[5]);
                end
              else
                begin
                  frxDBDataset5.DataSet := CDS6;
                end;
 
 
                  DecompressStream(rStream,rptStream);
                  frxReport.LoadFromStream(rptStream);
                  frxReport.Tag:= reportTag;
 
                  {
                  obj[0]:=TReportParam.Create;
                  obj[0].AddParam('DNO','cccc');
                  obj[0].AddParam('ACT','A');
                  frxReport.Objects.Add(obj);
                  }
 
                  if showreport then
                  begin
                     frxReport.ShowReport();
                     frxDBDataset.DataSet := cdsReport;
                     frxDBDataset1.DataSet := cdsReport1;
                     frxDBDataset2.DataSet := cdsReport2;
                     frxDBDataset3.DataSet := cdsReport3;
                     frxDBDataset4.DataSet := cdsReport4;
                     frxDBDataset5.DataSet := cdsReport5;
                  end;
 
       end;
 
 
    end;


end;

procedure TfrmBase.ShowReport(scon:Tsockcon;reportid: string;
  _params: array of TReportParam);
var
  I,reportTag: Integer;
 // dsName:TStringList;
  rStream,rptStream:Tstream;
  showreport:boolean;

  rpVariable:TReportParam;

begin
  showreport:=true;


  rptStream:=TMemoryStream.Create;
  rStream:=TMemoryStream.Create;
  cdsRepTemp.Close;

  cdsRepTemp.RemoteServer:=scon;

  TSockCon(cdsRepTemp.RemoteServer).AddProv('report_prov004', 'ALL');


  cdsRepTemp.ProviderName:='report_prov004';
  cdsRepTemp.CommandText:='select * from  CQDM010  where REPORT_ID='''+reportid+'''';



  cdsRepTemp.Open;

  if cdsRepTemp.Active then
    if cdsRepTemp.RecordCount>0 then
    begin

       rStream:=cdsRepTemp.CreateBlobStream(cdsRepTemp.FieldByName('REPORT_CONTEXT'), bmRead);
       reportTag:=cdsRepTemp.fieldByName('ID').AsInteger;

       if (rStream.Size>0) then
       begin
         DecompressStream(rStream,rptStream);
         frxReport.LoadFromStream(rptStream);

         cdsReport.close;
         cdsReport1.close;
         cdsReport2.close;
         cdsReport3.close;
         cdsReport4.close;
         cdsReport5.close;

         cdsReport.RemoteServer:=SockCon;
         cdsReport1.RemoteServer:=SockCon;
         cdsReport2.RemoteServer:=SockCon;
         cdsReport3.RemoteServer:=SockCon;
         cdsReport4.RemoteServer:=SockCon;
         cdsReport5.RemoteServer:=SockCon;

                  //frxReport.Variables.clear();
                  //frxReport.Variables.Variables['USERID']:=UserID;

                  if trim(cdsRepTemp.fieldbyname('STRSQL').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport,'STRSQL',reportid,_params[0]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL1').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport1,'STRSQL1',reportid,_params[1]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL2').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport2,'STRSQL2',reportid,_params[2]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL3').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport3,'STRSQL3',reportid,_params[3]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL4').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport4,'STRSQL4',reportid,_params[4]);

                  if trim(cdsRepTemp.fieldbyname('STRSQL5').AsString)<>'' then
                  showreport:=genReportA(scon,cdsReport5,'STRSQL5',reportid,_params[5]);


                  DecompressStream(rStream,rptStream);
                  frxReport.LoadFromStream(rptStream);
                  frxReport.Tag:= reportTag;

                  {
                  obj[0]:=TReportParam.Create;
                  obj[0].AddParam('DNO','cccc');
                  obj[0].AddParam('ACT','A');
                  frxReport.Objects.Add(obj);
                  }



                  if showreport then
                      frxReport.ShowReport();

       end;


    end;
end;

{ TReportParam }



procedure TReportParam.AddParam(Name, Value: string);
var NewCount:integer;
begin
   NewCount := Length(RParams)+1;
  SetLength(RParams, NewCount);
  RParams[High(RParams)].Name:=Name;
  RParams[High(RParams)].Value:=Value;
end;

constructor TReportParam.Create;
begin
    inherited Create;
    RParams:=nil;
end;

{ TFrxVariables }

constructor TFrxVariables.Create(const Name, Value: String);
begin
  self.FName  := Name;
  self.FValue := Value;
end;

end.
