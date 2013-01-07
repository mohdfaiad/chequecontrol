unit ClearDBFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, MConnect, SConnect, SockCon, ExtCtrls,
  Grids, DBGrids, cxControls, cxSplitter;

type
  TfrmClearDB = class(TForm)
    Button1: TButton;
    SockCon: TSockCon;
    cds: TClientDataSet;
    edContract: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    ds1: TDataSource;
    cds1: TClientDataSet;
    cds2: TClientDataSet;
    ds2: TDataSource;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DBGrid2: TDBGrid;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cds1AfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure cds2AfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClearDB: TfrmClearDB;

implementation

uses UIT_UTILS_LIB;

{$R *.dfm}

procedure TfrmClearDB.Button1Click(Sender: TObject);
begin
 cds.close;
 cds.CommandText:=''+

   ' declare @dno as varchar(20) '+
   ' declare  c1 cursor for '+
   '   select CQSDNO from CQDS003  where  CQSCSN='''+edContract.Text+''' '+
   ' open c1 '+
   ' fetch  next from c1 into @dno '+
   '   while @@fetch_status=0 '+
   '   begin '+
   ' '+
   '     delete from CQDM007 where CQMDNO=@dno '+
   '     fetch  next from c1 into @dno '+
   '   end         '+
   '                  '+
   '   close c1 '+
   ' deallocate c1 '+

   ' delete from CQDS003  where  CQSCSN='''+edContract.Text+''' ';


 if Application.MessageBox(pchar('Delete '+edContract.Text),pchar('Confirm'),MB_YESNO)=mrYes then
  begin
     cds.Execute;
     Application.MessageBox(pchar('Success!!!'),pchar('Information'),MB_OK or MB_ICONINFORMATION);
  end;

 cds1.Close;
 cds1.Open;
end;

procedure TfrmClearDB.Button2Click(Sender: TObject);
begin
 if Application.MessageBox(pchar('Delete ALL'),pchar('Confirm'),MB_YESNO)=mrYes then
  begin
     cds.Close;
     cds.CommandText:='delete from CQDM007 delete from CQDS003';
     cds.Execute;

     Application.MessageBox(pchar('Success!!!'),pchar('Information'),MB_OK or MB_ICONINFORMATION);
     cds1.Close;
     cds1.Open;
     cds2.close;

  end;
end;

procedure TfrmClearDB.Button3Click(Sender: TObject);
begin
  //
  cds1.Close;
  cds1.Open;
end;

procedure TfrmClearDB.cds1AfterScroll(DataSet: TDataSet);
begin
 cds2.Close;
 cds2.CommandText:='select CQSCSN,CQSDNO,CQSSEQ,CQSRCT,CQSAMT,CQSVAT,CQSWHT,CQSNET,CQSADF,CQSCFA,CQSPFA,CQSWFA,CQSIWT,CQSRS1,CQSRS2 from CQDS003 where CQSDNO='''+cds1.FieldByName('CQMDNO').AsString+'''';
 cds2.Open;
end;

procedure TfrmClearDB.cds2AfterScroll(DataSet: TDataSet);
begin
 edContract.Text:=cds2.FieldByName('CQSCSN').AsString;
end;

procedure TfrmClearDB.FormCreate(Sender: TObject);
begin
 initSockConn(SockCon);

 frmClearDB.Caption:=frmClearDB.Caption+' - '+SockCon.Address+'';
 cds1.Close;
 cds1.Open;

end;

end.
