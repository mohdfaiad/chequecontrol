unit CQPU001_UTILS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseFrm, ImgList, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxLabel, ComCtrls, ToolWin, JvExExtCtrls, JvExtComponent, JvPanel,
  ExtCtrls, Provider, DB, ADODB, StdCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, Menus,
  cxLookAndFeelPainters, cxDropDownEdit, cxCalendar, cxMemo, cxButtons,
  cxMaskEdit, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  JvExComCtrls, JvComCtrls, cxLookAndFeels,   SConnect,
   DBClient, MConnect,    Grids, DBGrids,
    cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, JvExControls, JvDBLookup, JvExStdCtrls, JvCombobox,RemCollect,
  DBCtrls,sockcon;

const

  // sql statement
  _sql_001= 'select * from CQDM001 where CQMACT=''A''  and  CQMBNK=:A order by CQMBRC ';
//  _sql_001= 'select * from LLSPDTA.dbo.CQDM001 where CQMACT=''A''   order by CQMBRC';
  _sql_002= 'select CQMBNK,CQMEGN from CQDM001 where CQMACT=''A'' group by  CQMBNK,CQMEGN order by CQMEGN';


  procedure loadComboList(_cmb:TcxDBLookupComboBox;conn:TConnectionBroker;_ds:TDataSource;_dataField,_keyField,_listField:string;_sqlcommand:string;rcTemp:TClientDataSet;rcDs:TDataSource;tmpName:string);overload;
  procedure loadComboList(_cmb:TcxComboBox;conn:TConnectionBroker;_keyField,_listField:string;_sqlcommand:string;rcTemp:TClientDataSet;tmpName:string);overload;
  procedure loadComboList(_cmb:TcxComboBox;_keyField,_listField:string;rcTemp:TClientDataSet);overload;
  procedure  loadComboBoxProperties(_cmb:TcxComboBoxProperties;_keyField,_listField:string;rcTemp:TClientDataSet);

  procedure setDefaultIndexComboList(_cmb:TcxComboBox;value:string);

  function  IsConChqExists(Sockcon:TSockCon;_conn,chqno,bnk,bbr:string):boolean;

implementation

uses UIT_GLOBAL_LIB;



  function IsConChqExists(Sockcon:TSockCon;_conn,chqno,bnk,bbr:string):boolean;
  var rcTemp:TClientDataSet;
      rep:boolean;
  begin

    rep:=false;
    rcTemp:=TClientDataSet.Create(nil);
    rcTemp.RemoteServer:=Sockcon;
    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv('runnung_prov003', 'ALL');
      ProviderName:='runnung_prov003';
      close;
      CommandText:='select * from CQDM007 where CQMCSN='''+_conn+''' and CQMCNO='''+chqno+''' and CQMBNK='''+bnk+''' and CQMBBR='''+bbr+''' ';
      open;
      rep:=(recordcount>0)
    end;

    result:=rep;

  end;


  procedure  loadComboList(_cmb:TcxDBLookupComboBox;conn:TConnectionBroker;_ds:TDataSource;_dataField,_keyField,_listField:string;_sqlcommand:string;rcTemp:TClientDataSet;rcDs:TDataSource;tmpName:string);overload;
  begin
    //cdsCmbList.RemoteServer:=conn;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv(tmpName, 'ALL');
      ProviderName:=tmpName;
      close;

      CommandText:=_sqlcommand;
      open;

      if recordcount>0 then
      begin
        rcds.DataSet:=rcTemp;
        _cmb.DataBinding.DataSource:=_ds;
        _cmb.DataBinding.DataField:=_dataField;

        _cmb.Properties.ListSource:=rcds;
        _cmb.Properties.KeyFieldNames:=_keyField;
        _cmb.Properties.ListFieldNames:=_listField;
      end;
    end;


  end;

  procedure  loadComboBoxProperties(_cmb:TcxComboBoxProperties;_keyField,_listField:string;rcTemp:TClientDataSet);
  var _Value:TString;
  begin
    //cdsCmbList.RemoteServer:=conn;
    _cmb.Items.Clear;

    with rcTemp do
    begin

      if rcTemp.Active then
      if recordcount>0 then
      begin
        rcTemp.First;
        while not rcTemp.Eof do
        begin
           _Value := TString.Create(trim(rcTemp.FieldByName(_keyField).AsString));
          _cmb.Items.AddObject(trim(rcTemp.FieldByName(_listField).AsString),_Value);
          //_cmb.Properties.Items.Add(trim(rcTemp.FieldByName(_listField).AsString));

          rcTemp.Next;
        end;



      end;
    end;


  end;

  procedure setDefaultIndexComboList(_cmb:TcxComboBox;value:string);
  var i:integer;
  begin
    for i := 0 to _cmb.Properties.Items.Count - 1 do
      if trim(TString(_cmb.Properties.Items.Objects[i]).Str)=value then
        _cmb.ItemIndex:=i;
      
  end;

  procedure  loadComboList(_cmb:TcxComboBox;conn:TConnectionBroker;_keyField,_listField:string;_sqlcommand:string;rcTemp:TClientDataSet;tmpName:string);
  var _Value:TString;
  begin
    //cdsCmbList.RemoteServer:=conn;
    _cmb.Properties.Items.Clear;

    with rcTemp do
    begin
      TSockCon(rcTemp.RemoteServer).AddProv(tmpName, 'ALL');
      ProviderName:=tmpName;
      close;

      CommandText:=_sqlcommand;
      open;
      if recordcount>0 then
      begin
        rcTemp.First;
        while not rcTemp.Eof do
        begin
           _Value := TString.Create(trim(rcTemp.FieldByName(_keyField).AsString));
          _cmb.Properties.Items.AddObject(trim(rcTemp.FieldByName(_listField).AsString),_Value);
          //_cmb.Properties.Items.Add(trim(rcTemp.FieldByName(_listField).AsString));

          rcTemp.Next;
        end;

        _cmb.ItemIndex:=0;
      end;
    end;


  end;

  procedure  loadComboList(_cmb:TcxComboBox;_keyField,_listField:string;rcTemp:TClientDataSet);
  var _Value:TString;
  begin
    //cdsCmbList.RemoteServer:=conn;
    _cmb.Properties.Items.Clear;

    with rcTemp do
    begin

      if rcTemp.Active then      
      if recordcount>0 then
      begin
        rcTemp.First;
        while not rcTemp.Eof do
        begin
           _Value := TString.Create(trim(rcTemp.FieldByName(_keyField).AsString));
          _cmb.Properties.Items.AddObject(trim(rcTemp.FieldByName(_keyField).AsString+' '+rcTemp.FieldByName(_listField).AsString),_Value);
          //_cmb.Properties.Items.Add(trim(rcTemp.FieldByName(_listField).AsString));

          rcTemp.Next;
        end;

        _cmb.ItemIndex:=0;
      end;
    end;


  end;

end.
