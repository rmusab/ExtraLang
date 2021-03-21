unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, ExtCtrls, RzButton, StdCtrls, RzLabel, Buttons, ShellAPI;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    LabelProductName: TLabel;
    LabelVersion: TLabel;
    Bevel1: TBevel;
    LabelLicense: TLabel;
    LabelUserName: TLabel;
    LabelCompany: TLabel;
    LabelSerialNumber: TLabel;
    Version: TLabel;
    UserName: TLabel;
    Company: TLabel;
    SerialNumber: TLabel;
    LabelProgrammer: TLabel;
    Programmer: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    RzURLLabel1: TRzURLLabel;
    Label7: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.RzBitBtn1Click(Sender: TObject);
begin
  Close;  
end;

procedure TForm3.RzBitBtn2Click(Sender: TObject);
begin
  ShellExecute(Application.MainForm.Handle, nil,
  PChar('mailto:ravmus@gmail.com?SUBJECT=ExtraLang program'),nil,nil,SW_ShowNormal);
end;

end.
