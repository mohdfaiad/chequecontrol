unit PluginBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  AFromBase
  , StdCtrls,  ExtCtrls;

type
  TfrmPluginBase = class(TAFormBase)
    MASTERPANE: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     constructor CreateEx(AContainer:TWinControl;AForm:TForm);override;
  end;

var
  frmPluginBase: TfrmPluginBase;

implementation



{$R *.dfm}

{ TfrmPluginBase }

constructor TfrmPluginBase.CreateEx(AContainer: TWinControl; AForm: TForm);
begin
  inherited;
  FitInContainer(AContainer,AForm);
end;

procedure TfrmPluginBase.FormCreate(Sender: TObject);
begin
  //lbHead.Caption:=UpperCase(self.Caption);
  //Self.BorderStyle:=bsNone;
end;

procedure TfrmPluginBase.FormShow(Sender: TObject);
begin
  //self.Refresh;
end;

end.
