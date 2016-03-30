unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, DB, eventlog, FileUtil, Process,
  DBDateTimePicker, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  DBCtrls, Buttons, DBExtCtrls, ExtCtrls, XMLPropStorage, ActnList, Menus, LazLogger;

type

  { TForm1 }

  TForm1 = class(TForm)
    ApplicationProperties1: TApplicationProperties;
    Help_Thai_off: TAction;
    Help_Thai: TAction;
    CrashReport: TAction;
    Help_Fi: TAction;
    Help_En: TAction;
    Help_It: TAction;
    Help_Fr: TAction;
    Help_Dt: TAction;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    Tagalog: TAction;
    Englisch: TAction;
    Italienisch: TAction;
    Franzoesisch: TAction;
    Deutsch: TAction;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    Print_Editor: TAction;
    Print_Statistik: TAction;
    Print_PreView: TAction;
    Monat_and_Jahr: TAction;
    Medikamente: TAction;
    ActionClose: TAction;
    ActionList1: TActionList;
    DSDay: TDataSource;
    DSYear: TDataSource;
    DSMonth: TDataSource;
    DSMedikamente: TDataSource;
    DBCheckBox1: TDBCheckBox;
    DBDateEdit3: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    DBLookupComboBox15: TDBLookupComboBox;
    DBLookupComboBox16: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    DBLookupComboBox18: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox20: TDBLookupComboBox;
    DBLookupComboBox21: TDBLookupComboBox;
    DBLookupComboBox22: TDBLookupComboBox;
    DBLookupComboBox23: TDBLookupComboBox;
    DBLookupComboBox24: TDBLookupComboBox;
    DBLookupComboBox25: TDBLookupComboBox;
    DBLookupComboBox26: TDBLookupComboBox;
    DBLookupComboBox27: TDBLookupComboBox;
    DBLookupComboBox28: TDBLookupComboBox;
    DBLookupComboBox29: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox30: TDBLookupComboBox;
    DBLookupComboBox31: TDBLookupComboBox;
    DBLookupComboBox32: TDBLookupComboBox;
    DBLookupComboBox33: TDBLookupComboBox;
    DBLookupComboBox34: TDBLookupComboBox;
    DBLookupComboBox35: TDBLookupComboBox;
    DBLookupComboBox36: TDBLookupComboBox;
    DBLookupComboBox37: TDBLookupComboBox;
    DBLookupComboBox38: TDBLookupComboBox;
    DBLookupComboBox39: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox40: TDBLookupComboBox;
    DBLookupComboBox41: TDBLookupComboBox;
    DBLookupComboBox42: TDBLookupComboBox;
    DBLookupComboBox43: TDBLookupComboBox;
    DBLookupComboBox44: TDBLookupComboBox;
    DBLookupComboBox45: TDBLookupComboBox;
    DBLookupComboBox46: TDBLookupComboBox;
    DBLookupComboBox47: TDBLookupComboBox;
    DBLookupComboBox48: TDBLookupComboBox;
    DBLookupComboBox49: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox50: TDBLookupComboBox;
    DBLookupComboBox51: TDBLookupComboBox;
    DBLookupComboBox52: TDBLookupComboBox;
    DBLookupComboBox53: TDBLookupComboBox;
    DBLookupComboBox54: TDBLookupComboBox;
    DBLookupComboBox55: TDBLookupComboBox;
    DBLookupComboBox56: TDBLookupComboBox;
    DBLookupComboBox57: TDBLookupComboBox;
    DBLookupComboBox58: TDBLookupComboBox;
    DBLookupComboBox59: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox60: TDBLookupComboBox;
    DBLookupComboBox61: TDBLookupComboBox;
    DBLookupComboBox62: TDBLookupComboBox;
    DBLookupComboBox63: TDBLookupComboBox;
    DBLookupComboBox64: TDBLookupComboBox;
    DBLookupComboBox65: TDBLookupComboBox;
    DBLookupComboBox66: TDBLookupComboBox;
    DBLookupComboBox67: TDBLookupComboBox;
    DBLookupComboBox68: TDBLookupComboBox;
    DBLookupComboBox69: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox70: TDBLookupComboBox;
    DBLookupComboBox71: TDBLookupComboBox;
    DBLookupComboBox72: TDBLookupComboBox;
    DBLookupComboBox73: TDBLookupComboBox;
    DBLookupComboBox74: TDBLookupComboBox;
    DBLookupComboBox75: TDBLookupComboBox;
    DBLookupComboBox76: TDBLookupComboBox;
    DBLookupComboBox77: TDBLookupComboBox;
    DBLookupComboBox78: TDBLookupComboBox;
    DBLookupComboBox79: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox80: TDBLookupComboBox;
    DBLookupComboBox81: TDBLookupComboBox;
    DBLookupComboBox82: TDBLookupComboBox;
    DBLookupComboBox83: TDBLookupComboBox;
    DBLookupComboBox84: TDBLookupComboBox;
    DBLookupComboBox85: TDBLookupComboBox;
    DBLookupComboBox86: TDBLookupComboBox;
    DBLookupComboBox87: TDBLookupComboBox;
    DBLookupComboBox88: TDBLookupComboBox;
    DBLookupComboBox89: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox90: TDBLookupComboBox;
    DBLookupComboBox91: TDBLookupComboBox;
    DBLookupComboBox92: TDBLookupComboBox;
    DBLookupComboBox93: TDBLookupComboBox;
    DBLookupComboBox94: TDBLookupComboBox;
    DBLookupComboBox95: TDBLookupComboBox;
    DBLookupComboBox96: TDBLookupComboBox;
    DBLookupComboBox97: TDBLookupComboBox;
    DBLookupComboBox98: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    EventLog1: TEventLog;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label9: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    TrayIcon1: TTrayIcon;
    XMLPropStorage1: TXMLPropStorage;

    procedure ActionCloseExecute(Sender: TObject);

    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Help_DtExecute(Sender: TObject);
    procedure Help_EnExecute(Sender: TObject);
    procedure Help_FiExecute(Sender: TObject);
    procedure MedikamenteExecute(Sender: TObject);
    procedure Monat_and_JahrExecute(Sender: TObject);
    procedure Print_EditorExecute(Sender: TObject);
    procedure Print_PreViewExecute(Sender: TObject);

    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure StoreFormState(Sender: TObject);
    procedure RestoreFormState(Sender: TObject);

    procedure RunVersion(Sender: TObject);
    procedure RunBackUp(Sender: TObject);
    procedure RunTagalogHelp(Sender: TObject);
    procedure RunEnglishHelp(Sender: TObject);
    procedure RunGermanHelp(Sender: TObject);
     procedure RunHelp(Sender: TObject);
    procedure RunINILoad(Sender: TObject);
    procedure RunINISave(Sender: TObject);

    //   TLiveSelection = (lsMoney, lsChilds, lsTime);
    //   TLive = Array[0..1] of TLiveSelection;

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
uses uMediEdit, Unit3, udm1, frm_Versio_about, frm_help;

{ TForm1 }


procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  MyForm: TFormMediEdit;
begin
  if DM1.QDay.UpdateStatus <> TUpdateStatus.usUnmodified then
    DM1.QDay.ApplyUpdates;

  MyForm := TFormMediEdit.Create(nil);
  try
    MyForm.ShowModal;
  finally
    MyForm.Free;
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  MyForm3: TForm3;
begin

  if DM1.QDay.UpdateStatus <> TUpdateStatus.usUnmodified then
    DM1.QDay.ApplyUpdates;

  MyForm3 := TForm3.Create(nil);
  try
    MyForm3.ShowModal;
  finally
    MyForm3.Free;
  end;
  DM1.QDay.Active := True;
  DM1.QYear.Active := True;
  DM1.QMonth.Active := True;
  DM1.QMedikamente.Active := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  DirStr: string;
  i: Int32;
    s: string;

begin

  {Testen ob Directory existiert wenn nicht erstelle Directory}
  if not DirectoryExists('./sql') then
    DirStr := 'sql';
  CreateDir(DirStr);

  if not DirectoryExists('./export') then
    DirStr := 'export';
  CreateDir(DirStr);

  if not DirectoryExists('./img') then
    DirStr := 'img';
  CreateDir(DirStr);

  if not DirectoryExists('./ini') then
    DirStr := 'ini';
  CreateDir(DirStr);

  if not DirectoryExists('./log') then
    DirStr := 'log';
  CreateDir(DirStr);

  if not DirectoryExists('./archiv') then
    DirStr := 'archiv';
  CreateDir(DirStr);

  EventLog1.FileName := './log/CrashReport.txt';
  EventLog1.Active := True;

  XMLPropStorage1.FileName := './ini/MainForm.ini';
  XMLPropStorage1.Restore;

   RunINISave(self);
   RunINILoad(self);

  {schliesst Verbindung zu SQLite Datenbanken }
  //SQLite3Connection1.Close;

  {Öffnet Datenbank Datei migränetagebuch}
  {Testet Datenbank Connection}
  DM1.DatabaseName := './sql/migraenetagebuch.sql3db';
  if DM1.TestAndOpenDB then
    StatusBar1.Panels.Add.Text := 'Verbindung hergestellt';

  {Erstellen der Tabellen ins Datenmodul ausgelagert}

  // Oeffnet Verbindung für Form 1 Daten.
  DM1.QDay.Active := True;
  DM1.QYear.Active := True;
  DM1.QMonth.Active := True;
  DM1.QMedikamente.Active := True;




    // start with Parameter

  s := '';
  for i := 1 to Application.ParamCount do
  begin
    if Application.Params[i] = '-h' then
      Begin
      try
RunHelp(self);
       Close;
       Except
        DebugLn('Error: Can`t Start Help Menue');
      end;
       Close;
    end;

    if Application.Params[i] = '-v' then
      Begin
      try
RunVersion(self);
       Close;
       Except
         DebugLn('Error: Can`t Start Version Menue Short');

       end;
       Close;
      end;

    if Application.Params[i] = '-b' then
      Begin
      try
      RunBackUp(self);
      Close;
      Except
        DebugLn('Error: Can`t Start BackUp Short');
        End;
      Close;
    end;

    if Application.Params[i] = '--backup' then
      Begin
      try
      RunBackUp(self);
      Close;
      Except
        DebugLn('Error: Can`t Start BackUp Long');
        End;
      Close;
    End;

    if Application.Params[i] = '--version' then
      Begin
      try
RunVersion(self);
Close;
    Except
      DebugLn('Error: Can`t Start Version Menue Long');
      End;
    Close;
    End;

    if Application.Params[i] = '--Help' then
      Begin
      try
RunHelp(self);
Close;
      Except
        DebugLn('Error: Can`t Start Help Menue Long');
        End;
      Close;
    End;

    if Application.Params[i] = '--Help-DE' then
      Begin
      try
      RunGermanHelp(self);
      Close;
      Except
        DebugLn('Error: Can`t Start Help File DE');
        End;
      Close;
    End;

    if Application.Params[i] = '--Help-EN' then
      Begin
      try
      RunEnglishHelp(self);
      Close;
      Except
        DebugLn('Error: Can`t Start Help File EN');
        End;
      Close;
    End;

    if Application.Params[i] = '--Help-TAGALOG' then
      Begin
      try
      RunTagalogHelp(self);
      Close;
      Except
        DebugLn('Error: Can`t Start Help File Tagalog');
        End;
      Close;
      end;

end;

end;

procedure TForm1.FormHide(Sender: TObject);
begin
  TrayIcon1.Visible := True;

end;

procedure TForm1.Help_DtExecute(Sender: TObject);
var
  AProcess: TProcess;
begin
  try
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine :=
      './help/Docview/docview.exe ./help/help/Migraene_Tagebuch.inf';
    AProcess.Options := AProcess.Options + [poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
  except
    DebugLn('Error: Can`t Start Help De');
  end;
end;

procedure TForm1.Help_EnExecute(Sender: TObject);
var
  AProcess: TProcess;
begin
  try
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine :=
      './help/Docview/docview.exe ./help/help/migraine_diary.en.inf';
    AProcess.Options := AProcess.Options + [poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
  except
    DebugLn('Error: Can`t Start Help EN');
  end;

end;

procedure TForm1.Help_FiExecute(Sender: TObject);
var
  AProcess: TProcess;
begin
  try
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine :=
      './help/Docview/docview.exe ./help/help/migraine_diary.ph.inf';
    AProcess.Options := AProcess.Options + [poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
  except
    DebugLn('Error: Can`t Start Help Tagalog');
  end;
end;

procedure TForm1.MedikamenteExecute(Sender: TObject);

var
  MyForm: TFormMediEdit;
begin
  if DM1.QDay.UpdateStatus <> TUpdateStatus.usUnmodified then
    DM1.QDay.ApplyUpdates;

  MyForm := TFormMediEdit.Create(nil);
  try
    MyForm.ShowModal;
  finally
    MyForm.Free;
  end;
end;

procedure TForm1.Monat_and_JahrExecute(Sender: TObject);
var
  MyForm3: TForm3;
begin

  if DM1.QDay.UpdateStatus <> TUpdateStatus.usUnmodified then
    DM1.QDay.ApplyUpdates;

  MyForm3 := TForm3.Create(nil);
  try
    MyForm3.ShowModal;
  finally
    MyForm3.Free;
  end;
  DM1.QDay.Active := True;
  DM1.QYear.Active := True;
  DM1.QMonth.Active := True;
  DM1.QMedikamente.Active := True;

end;

procedure TForm1.Print_EditorExecute(Sender: TObject);
begin
  DM1.frReport1.DesignReport;
end;

procedure TForm1.Print_PreViewExecute(Sender: TObject);
begin
  DM1.frReport1.LoadFromFile('./prnt/monats_uebersicht.lrf');
  DM1.frReport1.ShowReport;

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

  if DM1.QDay.UpdateStatus <> TUpdateStatus.usUnmodified then
    DM1.QDay.ApplyUpdates;
  DM1.QDay.Active := False;

  Form1.EventLog1.Active := False;

  Form1.EventLog1.Free;

end;

procedure TForm1.ActionCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm1.RestoreFormState(Sender: TObject);
begin
end;

procedure TForm1.StoreFormState(Sender: TObject);

begin

end;
 procedure TForm1.RunGermanHelp(Sender: TObject);

var
  AProcess: TProcess;

begin
  try
    form1.Hide;
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine :=
      './help/Docview/docview.exe ./help/help/migraenetagebuch.inf';

    AProcess.Options := AProcess.Options + [poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
  except
    DebugLn('Error: Can`t Start Help German');
  end;
end;
 procedure TForm1.RunEnglishHelp(Sender: TObject);

var
  AProcess: TProcess;

begin
  try
    form1.Hide;
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine :=
      './help/Docview/docview.exe ./help/help/migraine_diary.en.inf';

    AProcess.Options := AProcess.Options + [poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
  except
    DebugLn('Error: Can`t Start Help Englisch');
  end;

end;
 procedure TForm1.RunTagalogHelp(Sender: TObject);

var
  AProcess: TProcess;

begin
  try
    form1.Hide;
    AProcess := TProcess.Create(nil);
    AProcess.CommandLine :=
      './help/Docview/docview.exe ./help/help/migraine_diary.ph.inf';

    AProcess.Options := AProcess.Options + [poWaitOnExit];
    AProcess.Execute;
    AProcess.Free;
  except
    DebugLn('Error: Can`t Start Help Tagalog');
  end;

end;
 procedure TForm1.RunBackUp(Sender: TObject);

begin
  try
     form1.Hide;
    DM1.AbZipper1.FileName := './archiv/backup.zip';
    DM1.AbZipper1.OpenArchive('./archiv/backup.zip');
    DM1.AbZipper1.AddFiles('./sql/*.sql3db', 0);


    DM1.AbZipper1.Save;

    DM1.AbZipper1.CloseArchive;
    DM1.AbZipper1.Free;
  except
    DebugLn('Error: Can`t Create BackUp Archiv');
  end;

end;
 procedure TForm1.RunHelp(Sender: TObject);
 var
  MyForm22: TForm2;
begin

  MyForm22 := TForm2.Create(nil);
  try
    MyForm22.ShowModal;
  finally
    MyForm22.Free;

end;
  end;

    procedure TForm1.RunVersion(Sender: TObject);
 var
  MyForm14: TForm4;
begin

  MyForm14 := TForm4.Create(nil);
  try
    MyForm14.ShowModal;
  finally
    MyForm14.Free;

end;
  end;

 procedure TForm1.RunINISave(Sender: TObject);
 var
       FILEVERSION, PRODUCTVERSION, VERSIONINFO, ProductName, StringFileInfo,
    SHA, SHA1_EXE, CompanyName, FileDescription, InternalName,
    LegalCopyright, OriginalFilename :STRING ;
  BEGIN

  //  if not fileexists('./ini/migrainediary.ini') then
  //  Begin

    DM1.IniPropStorage1.IniFileName:='./ini/migrainediary.ini';
    SHA := inttostr(DM1.DCP_sha1_1.GetHashCode)   ;
    DM1.IniPropStorage1.Active:=True;
    DM1.IniPropStorage1.WriteString(SHA1_EXE,SHA);

//    DM1.IniPropStorage1.StoredValues.Values[SHA1_EXE].Value:=SHA;
 //   DM1.IniPropStorage1.StoredValue[SHA1_EXE].Value:=SHA;
    DM1.IniPropStorage1.Save;
    DM1.IniPropStorage1.Active:=false;
    DM1.IniPropStorage1.Save;
  //  DM1.IniPropStorage1.Free;
 //   end;
  end;
         procedure TForm1.RunINILoad(Sender: TObject);
  var
       FILEVERSION, PRODUCTVERSION, VERSIONINFO, ProductName, StringFileInfo,
    SHA, SHA1_EXE, CompanyName, FileDescription, InternalName,
    LegalCopyright, OriginalFilename :STRING ;

    Begin

    SHA := inttostr(DM1.DCP_sha1_1.GetHashCode)   ;
    DM1.IniPropStorage1.IniFileName:='./ini/migrainediary.ini';
    DM1.IniPropStorage1.Active:=true;

    DM1.IniPropStorage1.ReadString(FILEVERSION,'');
    DM1.IniPropStorage1.ReadString(PRODUCTVERSION,'');

    DM1.IniPropStorage1.ReadString(SHA1_EXE,'');
    DM1.IniPropStorage1.ReadString(CompanyName,'');

    DM1.IniPropStorage1.ReadString(FileVersion,'');

    DM1.IniPropStorage1.ReadString(InternalName,'');
    DM1.IniPropStorage1.ReadString(LegalCopyright,'');
    DM1.IniPropStorage1.ReadString(OriginalFilename,'');
    DM1.IniPropStorage1.ReadString(ProductName,'');
    DM1.IniPropStorage1.Active:=false;
    DM1.IniPropStorage1.Free;
    end;
end.
