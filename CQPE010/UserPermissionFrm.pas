unit UserPermissionFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, Menus, cxLookAndFeelPainters, frxBarcode,
  frxDBXComponents, frxADOComponents, frxIBXComponents, frxClass,
  frxBDEComponents, frxChart, frxDCtrl, frxExportHTML, frxExportCSV,
  frxExportPDF, frxExportXLS, DBClient, frxDBSet, SConnect, SockCon, DB,
  MConnect, ImgList, Provider, ADODB, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxLabel, StdCtrls, cxButtons, ComCtrls, ToolWin, JvExExtCtrls,
  JvExtComponent, JvPanel, ExtCtrls, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeels;



type
  TFNodeType = (ntRoot,ntGroup,ntReport);
  TPermissionFlag = (fgMenu,fgInsert,fgModify,fgDelete,fgInquiry,fgReport);
  TPermissionFlags = set of  TPermissionFlag;


  TNodeData = class
     FID:string;
     FName :string;
     FLevel:integer;
     FParent:integer;
     FNodeType:TFNodeType;
     FPermissionFg:TPermissionFlags;
     FNodeFlag:string;
     FNodeStatus:string;
  end;

  TfrmUserPermission = class(TfrmBase)
    Bevel1: TBevel;
    cdsMenu: TClientDataSet;
    ImgCheckBox: TImageList;
    trMenu: TTreeView;
    ImageCheckBox: TImageList;
    cdsPerM: TClientDataSet;
    connBroker: TConnectionBroker;
    ckInsert: TCheckBox;
    ckModify: TCheckBox;
    ckDelete: TCheckBox;
    ckInquiry: TCheckBox;
    ckReport: TCheckBox;
    cmbUser: TcxComboBox;
    cdsUserMenu: TClientDataSet;


    procedure FormShow(Sender: TObject);
    procedure trMenu1Click(Sender: TObject);
    procedure trMenu1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure trMenuClick(Sender: TObject);
    procedure ckInsertClick(Sender: TObject);
    procedure ckModifyClick(Sender: TObject);
    procedure ckDeleteClick(Sender: TObject);
    procedure ckInquiryClick(Sender: TObject);
    procedure ckReportClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cmbUserPropertiesChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cdsUserMenuReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    cds:TclientDataset;
    procedure GenerateTree(Node: TTreeNode; ParentId: integer;cds: TClientDataSet;step:integer);
    procedure GetAllChild(ANode : TTreenode);
    procedure RetrivePermission();
  public
    { Public declarations }
  end;


const
//ImageList.StateIndex=0 has some bugs, so we add one dummy image to position 0
cFlatUnCheck = 1;
cFlatChecked = 2;
cFlatRadioUnCheck = 3;
cFlatRadioChecked = 4;

var
  frmUserPermission: TfrmUserPermission;
  RootNode: TTreeNode;

implementation

uses UIT_GLOBAL_LIB, CQPU001_UTILS, UIT_UTILS_LIB;

{$R *.dfm}

procedure ToggleTreeViewCheckBoxes(Node:TTreeNode; cUnChecked, cChecked, cRadioUnchecked, cRadioChecked:integer);
var
  tmp:TTreeNode;
begin
  if Assigned(Node) then
  begin
    if Node.StateIndex = cUnChecked then
      Node.StateIndex := cChecked
    else if Node.StateIndex = cChecked then
      Node.StateIndex := cUnChecked
    else if Node.StateIndex = cRadioUnChecked then
    begin
      tmp := Node.Parent;
      if not Assigned(tmp) then 
        tmp := TTreeView(Node.TreeView).Items.getFirstNode
      else
        tmp := tmp.getFirstChild;
      while Assigned(tmp) do
      begin
        if (tmp.StateIndex in [cRadioUnChecked,cRadioChecked]) then
          tmp.StateIndex := cRadioUnChecked;
        tmp := tmp.getNextSibling;
      end;
      Node.StateIndex := cRadioChecked;
    end; // if StateIndex = cRadioUnChecked
  end; // if Assigned(Node)
end; (*ToggleTreeViewCheckBoxes*)

procedure TfrmUserPermission.btnCloseClick(Sender: TObject);
begin
  inherited;
  FormClosed := true;
//  Self.Close;
  FreeAndNil(frmUserPermission);
end;

procedure TfrmUserPermission.btnSaveClick(Sender: TObject);
begin
  inherited;
  try
    GetAllChild(RootNode);

   // RetrivePermission;
    //GetAllChild(RootNode);
    //trMenu.FullExpand;


    ShowMessage('Successfull.');
  except
    on ee:Exception do
    begin
      Application.MessageBox(pchar(ee.Message),pchar('Error'),MB_OK  or MB_ICONERROR);
      exit;
    end;
  end;

end;

procedure TfrmUserPermission.cdsUserMenuReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TfrmUserPermission.ckDeleteClick(Sender: TObject);
begin
  inherited;
  if trMenu.Selected<>nil then
  begin
    if ckDelete.Checked then
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg+[fgDelete]
    else
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg-[fgDelete];
  end;
end;

procedure TfrmUserPermission.ckInquiryClick(Sender: TObject);
begin
  inherited;
  if trMenu.Selected<>nil then
  begin
    if ckInquiry.Checked then
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg+[fgInquiry]
    else
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg-[fgInquiry];
  end;
end;

procedure TfrmUserPermission.ckInsertClick(Sender: TObject);
begin
  inherited;
  if trMenu.Selected<>nil then
  begin
    if ckInsert.Checked then
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg+[fgInsert]
    else
     TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg-[fgInsert]
  end;
end;

procedure TfrmUserPermission.ckModifyClick(Sender: TObject);
begin
  inherited;
  if trMenu.Selected<>nil then
  begin
    if ckModify.Checked then
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg+[fgModify]
    else
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg-[fgModify];
  end;
end;

procedure TfrmUserPermission.ckReportClick(Sender: TObject);
begin
  inherited;
  if trMenu.Selected<>nil then
  begin
    if ckReport.Checked then
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg+[fgReport]
    else
         TNodeData(trMenu.Selected.Data).FPermissionFg:=TNodeData(trMenu.Selected.Data).FPermissionFg-[fgReport];
  end;
end;

procedure TfrmUserPermission.cmbUserPropertiesChange(Sender: TObject);
begin
  inherited;
  RetrivePermission;
  //GetAllChild(RootNode);
  trMenu.FullExpand;
end;

procedure TfrmUserPermission.FormCreate(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmUserPermission.FormShow(Sender: TObject);
var
  _sql:string;
begin
  inherited;

  lbMainCurrentDate.Caption:= 'Date: '+ FormatDateTime('dd/MM/yyyy',getServerDateTime(SockCon));

  _sql:='select UserID from UserSystem where SystemCode=9';

  cds:=TClientDataSet.Create(self);
  cds.RemoteServer:=SockCon;

  loadComboList(cmbUser,connBroker,'UserID','UserID',_sql,cds,'cdsPermission');


  if cds.active then
  if cds.recordcount>0 then
  begin
    cds.close;
    RetrivePermission;
    trMenu.FullExpand;
  end else
  begin
    trMenu.Items.clear;
    Application.MessageBox(pchar('No User System 9 found!!!'),pchar('Warning'),MB_OK or MB_ICONWARNING);
    exit;
  end;

  


end;
{var
  TempNode,TempNode2: TTreeNode;
  cds:TclientDataset;
  _sql:string;
begin
  inherited;
  _sql:='select UserID from UserSystem where SystemCode=9';

  cds:=TClientDataSet.Create(self);
  cds.RemoteServer:=SockCon;
  loadComboList(cmbUser,connBroker,'UserID','UserID',_sql,cds,'cdsPermission');

  trMenu.FullExpand;

  trMenu.Items.Clear;

  RootNode:=trMenu.Items.AddChild(RootNode,'Menu');
  RootNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(RootNode.Data).FID:='';
  TNodeData(RootNode.Data).FName:='Menu';
  TNodeData(RootNode.Data).FLevel:=0;
  TNodeData(RootNode.Data).FNodeType:=ntRoot;
  TNodeData(RootNode.Data).FNodeFlag:='O';
  TNodeData(RootNode.Data).FNodeStatus:='A';



  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 1');
  TempNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 1';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=1 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;


  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 2');
  TempNode.Data:=TNodeData.Create;
 // TempNode.ImageIndex:=0;
 // TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 2';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=2 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;

  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 3');
  TempNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 3';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=3 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;

  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 4');
  TempNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 3';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=4 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;



end;

}

procedure TfrmUserPermission.GenerateTree(Node: TTreeNode;
  ParentId: integer; cds: TClientDataSet; step: integer);
var
TempNode,TempNode2: TTreeNode;
irow:integer;
begin
    Node.DeleteChildren;
    if cds.RecordCount>0 then
    begin
      cds.First;
      while not cds.Eof do
      begin

        cdsPerM.close;
        cdsPerM.CommandText:='select * from UserMenu where UserID='''+TString(cmbUser.Properties.Items.Objects[cmbUser.SelectedItem]).Str+''' and ReserveStr1='''+trim(cds.fieldbyname('MenuID').AsString)+'''';
        cdsPerM.Open;


        TempNode:=trMenu.Items.AddChild(Node,'['+trim(cds.fieldbyname('MenuID').AsString)+'] '+cds.fieldbyname('MenuName').AsString);
        TempNode.Data:=TNodeData.Create;
        TNodeData(TempNode.Data).FID:=trim(cds.fieldbyname('MenuID').AsString);
        TNodeData(TempNode.Data).FName:=cds.fieldbyname('MenuName').AsString;
        TNodeData(TempNode.Data).FParent:=ParentId;
        TNodeData(TempNode.Data).FLevel:=TNodeData(Node.Data).FLevel+1;


        TNodeData(TempNode.Data).FNodeFlag:='O';
        TNodeData(TempNode.Data).FNodeStatus:='A';

        TempNode.ImageIndex:=0;
        TempNode.SelectedIndex:=0;

        if cdsPerM.RecordCount>0 then
        begin
         if UpperCase(trim(cdsPerM.FieldByName('RecordStatus').AsString))='A' then
          TempNode.StateIndex:=2
         else TempNode.StateIndex:=1;
         if UpperCase(trim(cdsPerM.FieldByName('FlagMenu').AsString))='Y' then TNodeData(TempNode.Data).FPermissionFg:=TNodeData(TempNode.Data).FPermissionFg+[fgMenu];
         if UpperCase(trim(cdsPerM.FieldByName('FlagInsert').AsString))='Y' then TNodeData(TempNode.Data).FPermissionFg:=TNodeData(TempNode.Data).FPermissionFg+[fgInsert];
         if UpperCase(trim(cdsPerM.FieldByName('FlagModify').AsString))='Y' then TNodeData(TempNode.Data).FPermissionFg:=TNodeData(TempNode.Data).FPermissionFg+[fgModify];
         if UpperCase(trim(cdsPerM.FieldByName('FlagDelete').AsString))='Y' then TNodeData(TempNode.Data).FPermissionFg:=TNodeData(TempNode.Data).FPermissionFg+[fgDelete];
         if UpperCase(trim(cdsPerM.FieldByName('FlagInquiry').AsString))='Y' then TNodeData(TempNode.Data).FPermissionFg:=TNodeData(TempNode.Data).FPermissionFg+[fgInquiry];
         if UpperCase(trim(cdsPerM.FieldByName('FlagReport').AsString))='Y' then TNodeData(TempNode.Data).FPermissionFg:=TNodeData(TempNode.Data).FPermissionFg+[fgReport];
        end
        else
          TempNode.StateIndex:=1;


        {
        if ((TNodeData(Node.data).FLevel+1)<2) then
        begin
          TempNode.ImageIndex:=1;
          TempNode.SelectedIndex:=0;
        end else
        begin
          TempNode.ImageIndex:=1;
          TempNode.SelectedIndex:=0;
        end;

        }


        if (TNodeData(Node.Data).FNodeType=ntRoot) then
        begin
          TNodeData(TempNode.Data).FNodeType:=ntGroup;
          //TempNode2:=ReportsTree.Items.AddChild(TempNode,trim(''));
          //ShowMessage('ntRoot');
        end;

        if (TNodeData(Node.Data).FNodeType=ntGroup)  then
        begin
          TNodeData(TempNode.Data).FNodeType:=ntReport;
          //ShowMessage('ntGroup');
         // TempNode2:=ReportsTree.Items.AddChild(TempNode,trim(''));
          //ShowMessage('yyyy');
        end;


        //TNodeData(TempNode.Data).fnodeType:=ntReport;

        //if TNodeData(Node).FNodeType<>ntGroup then
        //  TempNode2:=ReportsTree.Items.AddChild(TempNode,trim(''));


        cds.Next;
      end;
    end;


//
end;

procedure TfrmUserPermission.GetAllChild(ANode: TTreenode);
var
  NodeText : string;
  NextNode : TTreeNode;
  var str:string;
  ANodeCount:integer;
begin
  NextNode := ANode.GetFirstChild;

//  while NextNode <> nil do
  for ANodeCount := 0 to ANode.Count - 1 do
  begin
    //Str := Str + #10#13+' ' + NextNode.Text;
    if NextNode.HasChildren then
    begin
      //NextNode := NextNode.getFirstChild;
      if NextNode <> nil then
      begin
        //Str := Str + #10#13+' ' + NextNode.Text;
        GetAllChild(NextNode);
      end;
    end
    else
    begin
      if NextNode.StateIndex=2 then Str:= Str+'>>';

      Str := Str +'**'+TNodeData(NextNode.Data).FID+'**' + NextNode.Text+ #10#13;
      // update

      with cdsUserMenu do
      begin
        close;
        CommandText:='select * from  LCTPDTA.dbo.UserMenu where UserID='''+TString(cmbUser.Properties.Items.Objects[cmbUser.SelectedItem]).Str+''' and ReserveStr1='''+TNodeData(NextNode.Data).FID+''' and ProgramSystem=9';
        open;

        if cdsUserMenu.RecordCount>0 then
        begin
          //ShowMessage(Branch+' '+PDM+' '+PDT+' UserID:'+TString(cmbUser.Properties.Items.Objects[cmbUser.SelectedItem]).str+' MenuName:'+TNodeData(NextNode.Data).FName);

          cdsUserMenu.Edit;
          if ( fgInsert in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagInsert').AsString:='Y' else cdsUserMenu.FieldByName('FlagInsert').AsString:='N';
          if ( fgModify in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagModify').AsString:='Y' else cdsUserMenu.FieldByName('FlagModify').AsString:='N';
          if ( fgDelete in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagDelete').AsString:='Y' else cdsUserMenu.FieldByName('FlagDelete').AsString:='N';
          if ( fgInquiry in TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagInquiry').AsString:='Y' else cdsUserMenu.FieldByName('FlagInquiry').AsString:='N';
          if ( fgReport in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagReport').AsString:='Y' else cdsUserMenu.FieldByName('FlagReport').AsString:='N';
          if (NextNode.StateIndex=2) then
          begin
            cdsUserMenu.FieldByName('FlagMenu').AsString:='Y';
            cdsUserMenu.FieldByName('RecordStatus').AsString:='A';
          end else
          begin
            cdsUserMenu.FieldByName('FlagMenu').AsString:='N';
            cdsUserMenu.FieldByName('RecordStatus').AsString:='I';
          end;

          cdsUserMenu.FieldByName('ModifyDate').AsDateTime:=getServerDateTime(SockCon);
          cdsUserMenu.FieldByName('ModifyBy').AsString:=UserID;
          cdsUserMenu.FieldByName('ModifyWorkStation').AsString:=WorkStation;


          cdsUserMenu.Post;
          cdsUserMenu.ApplyUpdates(0);
        end else
        if (NextNode.StateIndex=2) then  // add only select node
        begin
          // append
          //ShowMessage(Branch+' '+PDM+' '+PDT+' UserID:'+TString(cmbUser.Properties.Items.Objects[cmbUser.SelectedItem]).str+' MenuName:'+TNodeData(NextNode.Data).FName);

          cdsUserMenu.Append;
          cdsUserMenu.FieldByName('Branch').AsString:=Branch;
          cdsUserMenu.FieldByName('ProgramSystem').AsString:='9';//PDM;
          cdsUserMenu.FieldByName('ProgramType').AsString:=PDT;
          cdsUserMenu.FieldByName('UserID').AsString:=TString(cmbUser.Properties.Items.Objects[cmbUser.SelectedItem]).Str;
          cdsUserMenu.FieldByName('MenuName').AsString:=TNodeData(NextNode.Data).FName;

          cdsUserMenu.FieldByName('ReserveStr1').AsString:=TNodeData(NextNode.Data).FID;

          cdsUserMenu.FieldByName('CreateDate').AsDateTime:=getServerDateTime(SockCon);
          cdsUserMenu.FieldByName('CreateBy').AsString:=UserID;
          cdsUserMenu.FieldByName('CreateWorkStation').AsString:=WorkStation;



          if ( fgInsert in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagInsert').AsString:='Y' else cdsUserMenu.FieldByName('FlagInsert').AsString:='N';
          if ( fgModify in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagModify').AsString:='Y' else cdsUserMenu.FieldByName('FlagModify').AsString:='N';
          if ( fgDelete in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagDelete').AsString:='Y' else cdsUserMenu.FieldByName('FlagDelete').AsString:='N';
          if ( fgInquiry in  TNodeData(NextNode.Data).FPermissionFg ) then   cdsUserMenu.FieldByName('FlagInquiry').AsString:='Y' else cdsUserMenu.FieldByName('FlagInquiry').AsString:='N';
          if ( fgReport in  TNodeData(NextNode.Data).FPermissionFg )then   cdsUserMenu.FieldByName('FlagReport').AsString:='Y' else cdsUserMenu.FieldByName('FlagReport').AsString:='N';
          if (NextNode.StateIndex=2) then
          begin
            cdsUserMenu.FieldByName('FlagMenu').AsString:='Y';
            cdsUserMenu.FieldByName('RecordStatus').AsString:='Y';
          end else
          begin
            cdsUserMenu.FieldByName('FlagMenu').AsString:='N';
            cdsUserMenu.FieldByName('RecordStatus').AsString:='N';
          end;
          cdsUserMenu.post;
          cdsUserMenu.ApplyUpdates(0);


        end;
      end;





      //NextNode := ANode.GetNextChild(NextNode);
      if NextNode <> nil then
      begin
        //Str := Str + #10#13+' ' + NextNode.Text;
        //GetAllChild(NextNode);
      end;
    end;
    NextNode := ANode.GetNextChild(NextNode);
  end; //while
  //ShowMessage(str);
end;
procedure TfrmUserPermission.RetrivePermission();
var
  TempNode,TempNode2: TTreeNode;
begin
  inherited;

  trMenu.FullExpand;


  trMenu.Items.Clear;



  RootNode:=trMenu.Items.AddChild(RootNode,'Menu');
  RootNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(RootNode.Data).FID:='';
  TNodeData(RootNode.Data).FName:='Menu';
  TNodeData(RootNode.Data).FLevel:=0;
  TNodeData(RootNode.Data).FNodeType:=ntRoot;
  TNodeData(RootNode.Data).FNodeFlag:='O';
  TNodeData(RootNode.Data).FNodeStatus:='A';



  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 1');
  TempNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 1';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=1 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;


  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 2');
  TempNode.Data:=TNodeData.Create;
 // TempNode.ImageIndex:=0;
 // TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 2';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=2 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;

  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 3');
  TempNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 3';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=3 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;

  TempNode:=trMenu.Items.AddChild(RootNode,'Menu Group 4');
  TempNode.Data:=TNodeData.Create;
  //TempNode.ImageIndex:=0;
  //TempNode.SelectedIndex:=0;
  TNodeData(TempNode.Data).FID:='';
  TNodeData(TempNode.Data).FName:='Menu Group 3';
  TNodeData(TempNode.Data).FLevel:=0;
  TNodeData(TempNode.Data).FNodeType:=ntRoot;
  TNodeData(TempNode.Data).FNodeFlag:='O';
  TNodeData(TempNode.Data).FNodeStatus:='A';

  with cdsMenu do
  begin
    close;
    CommandText:='select * from Menu where ProgramSystem=9 and MenuGroup=4 order by MenuGroup,MenuID';
    open;
    GenerateTree(TempNode,0,cdsMenu,1);
  end;

    

end;
procedure TfrmUserPermission.trMenu1Click(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := trMenu.ScreenToClient(P);
  if (htOnStateIcon in trMenu.GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(
       TrMenu.Selected,
       cFlatUnCheck,
       cFlatChecked,
       cFlatRadioUnCheck,
       cFlatRadioChecked);
end;

procedure TfrmUserPermission.trMenu1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_SPACE) and Assigned(trMenu.Selected) then
    ToggleTreeViewCheckBoxes(trMenu.Selected,cFlatUnCheck,cFlatChecked,cFlatRadioUnCheck,cFlatRadioChecked);
end;
procedure TfrmUserPermission.trMenuClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := trMenu.ScreenToClient(P);
  if (htOnStateIcon in trMenu.GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(
       trMenu.Selected,
       cFlatUnCheck,
       cFlatChecked,
       cFlatRadioUnCheck,
       cFlatRadioChecked);


  if trMenu.Selected<>nil then
  begin
   ckInsert.Checked   := ( fgInsert in  TNodeData(trMenu.Selected.Data).FPermissionFg );
   ckModify.Checked   := ( fgModify in  TNodeData(trMenu.Selected.Data).FPermissionFg );
   ckDelete.Checked   := ( fgDelete in  TNodeData(trMenu.Selected.Data).FPermissionFg );
   ckInquiry.Checked  := ( fgInquiry in  TNodeData(trMenu.Selected.Data).FPermissionFg );
   ckReport.Checked   := ( fgReport in  TNodeData(trMenu.Selected.Data).FPermissionFg );
  end;
end;

(*TreeView1KeyDown*)

end.
