unit my_mail_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  IniPropStorage, EditBtn, MaskEdit, StdCtrls, INIFiles, XMLConf;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    XMLConfig1: TXMLConfig;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure StoreFormState(Sender: TObject);
    procedure RestoreFormState(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  schmerz_tabelle_unit, medikamente_unit, monat_jahr_unit;

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin

end;

procedure TForm4.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  RestoreFormState(self);
end;

procedure TForm4.RestoreFormState(Sender: TObject);
var
  LastWindowState: TWindowState;
begin
  with XMLConfig1 do
  begin
    xmlconfig1.Filename := './ini/window4.ini';

    LastWindowState := TWindowState(GetValue('WindowState', integer(WindowState)));

    if LastWindowState = wsMaximized then
    begin
      WindowState := wsNormal;
      BoundsRect := Bounds(GetValue('RestoredLeft', RestoredLeft),
        GetValue('RestoredTop', RestoredTop),
        GetValue('RestoredWidth', RestoredWidth),
        GetValue('RestoredHeight', RestoredHeight));
      WindowState := wsMaximized;
    end
    else
    begin
      WindowState := wsNormal;
      BoundsRect := Bounds(GetValue('NormalLeft', Left),
        GetValue('NormalTop', Top), GetValue('NormalWidth', Width),
        GetValue('NormalHeight', Height));
    end;
  end;
end;

procedure TForm4.StoreFormState(Sender: TObject);

begin
  with XMLConfig1 do
  begin
    xmlconfig1.Filename := './ini/window4.ini';
    SetValue('NormalLeft', Left);
    SetValue('NormalTop', Top);
    SetValue('NormalWidth', Width);
    SetValue('NormalHeight', Height);

    SetValue('RestoredLeft', RestoredLeft);
    SetValue('RestoredTop', RestoredTop);
    SetValue('RestoredWidth', RestoredWidth);
    SetValue('RestoredHeight', RestoredHeight);

    SetValue('WindowState', integer(WindowState));

  end;

end;

end.
